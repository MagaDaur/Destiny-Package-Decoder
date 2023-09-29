#include "package.h"
#include "helpers.h"

#include "Audio.h"
#include "Textures.h"
#include "Strings.h"
#include "Models.h"
#include "Movie.h"

#include <string>

#include <filesystem>
namespace fs = std::filesystem;

Package::Package(const std::string& package_path) : header(package_path)
{
	FILE* package_file = fopen(package_path.c_str(), "rb");

	nonce[0] ^= (header.package_id >> 8) & 0xFF;
	nonce[11] ^= header.package_id & 0xFF;

	this->package_path = package_path;

	entry_table.resize(header.entry_size);
	fseek(package_file, header.entry_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.entry_size; i++)
		fread(&entry_table[i], sizeof(Entry), 1, package_file);

	block_table.resize(header.block_table_size);
	fseek(package_file, header.block_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.block_table_size; i++)
		fread(&block_table[i], sizeof(Block), 1, package_file);

	fclose(package_file);
}

FILE* Package::GetFile()
{
	return fopen(package_path.c_str(), "rb");
}

bool Package::SetupDataTables()
{
	for (int i = 0; i < entry_table.size(); i++)
	{
		auto& entry = entry_table[i];

		if (package_path.find("redacted") != std::string::npos)
			unknown_table.push_back(i);
		else if (entry.GetType() == 26 && entry.GetSubType() == 7)
			audio_table.push_back(i);
		else if (entry.GetType() == 27 && entry.GetSubType() == 1)
			continue;//movie_table.push_back(i);
		else if (entry.GetType() == 32 && entry.GetSubType() >= 1 && entry.GetSubType() <= 3)
			texture_table.push_back(i);
		else if (entry.GetType() == 8 && entry.GetSubType() == 0 && entry.A == 0x808099F1)
			continue;//string_table.push_back(i);
		else if (entry.GetType() == 8 && entry.GetSubType() == 0 && entry.A == 0x80806F07)
			continue;//model_table.push_back(i);
		else if(entry.A >> 16 == 0x8080)
			unknown_table.push_back(i);
	}

	return true;
}

bool Package::ExportDataTables(const std::string& output_folder_path)
{
	const std::string audio_folder_path = (output_folder_path + "audio/");
	const std::string video_folder_path = (output_folder_path + "video/");
	const std::string text_folder_path = (output_folder_path + "text/");
	const std::string texture_folder_path = (output_folder_path + "image/");
	const std::string unknown_folder_path = (output_folder_path + "unknown/");

	unsigned status = 0;

	if (audio_table.size())
	{
		CreateDirectoryA(audio_folder_path.c_str(), NULL);
		status |= AudioProcessor::ExportAudioToFolder(audio_table, audio_folder_path) << 0;
		if (~status & 1)
			fs::remove_all(audio_folder_path);
	}
		
	if (movie_table.size())
	{
		CreateDirectoryA(video_folder_path.c_str(), NULL);
		status |= MovieProcessor::ExportMovieToFolder(movie_table, video_folder_path) << 1;
		if (~status & 2)
			fs::remove_all(video_folder_path);
	}
		
	if (string_table.size())
	{
		CreateDirectoryA(text_folder_path.c_str(), NULL);
		status |= StringProcessor::ExportTextToFolder(string_table, text_folder_path) << 2;
		if (~status & 4)
			fs::remove_all(text_folder_path);
	}

	if (texture_table.size())
	{
		CreateDirectoryA(texture_folder_path.c_str(), NULL);
		status |= TextureProcessor::ExtractTextureToFolder(texture_table, texture_folder_path) << 3;
		if (~status & 8)
			fs::remove_all(texture_folder_path);
	}

	if (model_table.size())
	{
		ModelProcessor::ExportModelToFile(model_table, "dick");
	}

	if (unknown_table.size())
	{
		CreateDirectoryA(unknown_folder_path.c_str(), NULL);
		bool has_written = false;
		for (auto& entry_index : unknown_table)
		{
			auto& entry = entry_table[entry_index];
			auto file_name = unknown_folder_path + helpers::entry_file_name(entry, entry_index) + ".bin";
			auto file_size = entry.GetFileSize();
			unsigned char* file_raw_data = new (unsigned char[file_size]);
			if (!ExtractEntry(entry, file_raw_data))
			{
				delete[] file_raw_data;
				continue;
			}
			FILE* unknown_file = fopen(file_name.c_str(), "wb");
			fwrite(file_raw_data, file_size, 1, unknown_file);
			has_written = true;
			fclose(unknown_file);
			delete[] file_raw_data;
		}
		status |= has_written << 5;
		if (~status & 32)
			fs::remove_all(unknown_folder_path);
	}

	if (!status)
		fs::remove_all(output_folder_path);

	return status;
}

Package* Package::GetPackage(int package_id, int patch_id)
{
	if(patch_id == -1) return &package_table[package_id | (lastest_package_patches[package_id] << 20)];
	return &package_table[package_id | (patch_id << 20)];
}

bool Package::ExtractEntryByReference(Hash_Reference reference, unsigned char* out_buffer)
{
	if (!reference.valid()) return false;

	Package* ref_package = GetPackage(reference.get_package_id());

	if (!ref_package) return false;
	Entry ref_entry = ref_package->entry_table[reference.get_entry_id()];

	return ref_package->ExtractEntry(ref_entry, out_buffer, true);
}

bool Package::ExtractEntry(const Entry& entry, unsigned char* out_buffer, bool force)
{
	unsigned current_block_id = entry.GetStartingBlock();
	unsigned file_size = entry.GetFileSize();
	unsigned buffer_offset = 0;
	bool in_current_patch = false;

	unsigned char* block_buffer = new (unsigned char[Block::MAX_SIZE]);
	unsigned char* decrypt_buffer = new (unsigned char[Block::MAX_SIZE]);
	unsigned char* decomp_buffer = new (unsigned char[Block::MAX_SIZE]);

	memset(block_buffer, 0, Block::MAX_SIZE);
	memset(decrypt_buffer, 0, Block::MAX_SIZE);
	memset(decomp_buffer, 0, Block::MAX_SIZE);

	while (buffer_offset < file_size)
	{
		auto& block = block_table[current_block_id];
		FILE* patch_file = block.GetPatchFile(header.package_id);
		if (!patch_file)
		{
			delete[] block_buffer;
			delete[] decrypt_buffer;
			delete[] decomp_buffer;

			return false;
		}

		if (block.patch_id == header.patch_id)
			in_current_patch = true;

		fread(block_buffer, 1, Block::MAX_SIZE, patch_file);

		if (block.flags & 2)
			block.Decrypt(block_buffer, decrypt_buffer, nonce);
		else
			memcpy(decrypt_buffer, block_buffer, Block::MAX_SIZE);


		if (block.flags & 1)
			block.Decomp(decrypt_buffer, decomp_buffer);
		else
			memcpy(decomp_buffer, decrypt_buffer, Block::MAX_SIZE);

		int offset = current_block_id == entry.GetStartingBlock() ? entry.GetStartingBlockOffset() : 0;
		int size = min(Block::MAX_SIZE - offset, file_size - buffer_offset);

		memcpy(out_buffer + buffer_offset, decomp_buffer + offset, size);

		fclose(patch_file);

		buffer_offset += size;
		current_block_id++;
	}

	delete[] block_buffer;
	delete[] decrypt_buffer;
	delete[] decomp_buffer;

	return in_current_patch || force;
}

const std::vector<Entry>& Package::GetEntryTable()
{
	return entry_table;
}

const std::vector<Block>& Package::GetBlockTable()
{
	return block_table;
}