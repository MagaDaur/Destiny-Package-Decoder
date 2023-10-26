#include "package.h"
#include "helpers.h"

#include "Audio.h"
#include "Textures.h"
#include "Strings.h"
#include "Models.h"

#include <string>

#include <filesystem>
namespace fs = std::filesystem;

Package::Package(const std::string& package_path) : header(package_path)
{
	FILE* package_file = fopen(package_path.c_str(), "rb");

	nonce[0] ^= (header.package_id >> 8) & 0xFF;
	nonce[11] ^= header.package_id & 0xFF;

	this->package_path = package_path;
	this->package_short_path = package_path.substr(package_path.find_last_of('/') + 1);

	entry_table.resize(header.entry_size);
	fseek(package_file, header.entry_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.entry_size; i++)
	{
		fread(&entry_table[i], sizeof(Entry), 1, package_file);
		if (entry_table[i].A == 0x80805A09)
		{

		}
	}

	block_table.resize(header.block_table_size);
	fseek(package_file, header.block_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.block_table_size; i++)
		fread(&block_table[i], sizeof(Block), 1, package_file);

	fseek(package_file, header.hash64_table_offset + 0x50, SEEK_SET);
	for (unsigned i = 0; i < header.hash64_table_size; i++)
	{
		uint64_t hash64; uint32_t hash32, type;
		fread(&hash64, 8, 1, package_file);
		fread(&hash32, 4, 1, package_file);
		fread(&type, 4, 1, package_file);

		hash64_references[hash64] = hash32;
	}

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
		else if (entry.GetType() == 32 && entry.GetSubType() >= 1 && entry.GetSubType() <= 3)
			texture_table.push_back(i);
		else if (entry.A == 0x808099ef || entry.A == 0x80809eed || entry.A == 0x808099f1)
			string_table.push_back(i);
		else
			unknown_table.push_back(i);
	}

	return true;
}

bool Package::ExportDataTables(const std::string& output_folder_path)
{
	const std::string audio_folder_path = (output_folder_path + "audio/");
	const std::string text_folder_path = (output_folder_path + "text/");
	const std::string texture_folder_path = (output_folder_path + "image/");
	const std::string unknown_folder_path = (output_folder_path + "unknown/");
	const std::string bungie_folder_path = (output_folder_path + "bungie/");
	const std::string movie_folder_path = (output_folder_path + "movie/");
	const std::string ogg_folder_path = (output_folder_path + "bnk/");

	if (audio_table.size())
	{
		CreateDirectoryA(audio_folder_path.c_str(), NULL);
		AudioProcessor::ExportAudioToFolder(audio_table, audio_folder_path);
		if (fs::is_empty(audio_folder_path))
			fs::remove_all(audio_folder_path);
	}
		
	if (string_table.size())
	{
		CreateDirectoryA(text_folder_path.c_str(), NULL);
		StringProcessor::ExportTextToFolder(string_table, text_folder_path);
		if (fs::is_empty(text_folder_path))
			fs::remove_all(text_folder_path);
	}

	if (texture_table.size())
	{
		CreateDirectoryA(texture_folder_path.c_str(), NULL);
		TextureProcessor::ExtractTextureToFolder(texture_table, texture_folder_path);
		if (fs::is_empty(texture_folder_path))
			fs::remove_all(texture_folder_path);
	}

	if (unknown_table.size())
	{
		CreateDirectoryA(unknown_folder_path.c_str(), NULL);
		CreateDirectoryA(bungie_folder_path.c_str(), NULL);
		CreateDirectoryA(movie_folder_path.c_str(), NULL);
		CreateDirectoryA(ogg_folder_path.c_str(), NULL);

		for (auto& entry_index : unknown_table)
		{
			auto& entry = entry_table[entry_index];
			auto file_path = unknown_folder_path + helpers::entry_file_name(entry, entry_index) + ".bin";
			if(entry.GetType() == 26 && entry.GetSubType() == 6)
				file_path = ogg_folder_path + helpers::entry_file_name(entry, entry_index) + ".bnk";
			else if(entry.GetType() == 27 && entry.GetSubType() == 1)
				file_path = movie_folder_path + helpers::entry_file_name(entry, entry_index) + ".usm";
			else if(entry.A >> 16 == 0x8080)
				file_path = bungie_folder_path + helpers::entry_file_name(entry, entry_index) + ".bin";

			auto file_size = entry.GetFileSize();
			unsigned char* file_raw_data = new (unsigned char[file_size]);
			if (!ExtractEntry(entry, file_raw_data, true))
			{
				delete[] file_raw_data;
				continue;
			}

			FILE* unknown_file = fopen(file_path.c_str(), "wb");
			fwrite(file_raw_data, file_size, 1, unknown_file);
			fclose(unknown_file);

			delete[] file_raw_data;
		}

		if (fs::is_empty(unknown_folder_path))
			fs::remove_all(unknown_folder_path);

		if (fs::is_empty(bungie_folder_path))
			fs::remove_all(bungie_folder_path);

		if (fs::is_empty(movie_folder_path))
			fs::remove_all(movie_folder_path);

		if (fs::is_empty(ogg_folder_path))
			fs::remove_all(ogg_folder_path);
	}

	if (fs::is_empty(output_folder_path))
	{
		fs::remove_all(output_folder_path);
		return false;
	}


	return true;
}

Package* Package::GetPackage(int package_id, int patch_id, int language_id)
{
	if(patch_id == -1) return &package_table[package_id | (lastest_package_patches[package_id] << 14) | (language_id << 20)];
	return &package_table[package_id | (patch_id << 14) | (language_id << 20)];
}

bool Package::ExtractEntryByReference(FileReference reference, unsigned char* out_buffer)
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
		FILE* patch_file = block.GetPatchFile(header.package_id, header.language_id);
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