#include "package.h"
#include "helpers.h"

#include "Audio.h"
#include "Textures.h"
#include "Strings.h"
#include "Models.h"
#include "Movie.h"

#include <string>

Package::Package(FILE* package, const PackageHeader& header, const std::string& package_path)
{
	nonce[0] ^= (header.package_id >> 8) & 0xFF;
	nonce[11] ^= header.package_id & 0xFF;

	this->package_path = package_path;

	entry_table.resize(header.entry_size);
	fseek(package, header.entry_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.entry_size; i++)
		fread(&entry_table[i], sizeof(Entry), 1, package);

	block_table.resize(header.block_table_size);
	fseek(package, header.block_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.block_table_size; i++)
		fread(&block_table[i], sizeof(Block), 1, package);
}

bool Package::SetupDataTables()
{
	for (size_t i = entry_table.size() - 1; int(i) >= 0; i--)
	{
		auto& entry = entry_table[i];

		if (entry.GetType() == 26 && entry.GetSubType() == 7)
			audio_table.push_back(i);
		else if (entry.GetType() == 27 && entry.GetSubType() == 1)
			movie_table.push_back(i);
		else if (entry.GetType() == 32 && entry.GetSubType() >= 1 && entry.GetSubType() <= 3)
			texture_table.push_back(i);
		else if (entry.GetType() == 8 && entry.GetSubType() == 0 && entry.A == 0x808099F1)
			string_table.push_back(i);
		//else if (entry.GetType() == 8 && entry.GetSubType() == 0 && entry.A == 0x80806F07)
			//model_table.push_back(i);
		else
			unknown_table.push_back(i);
	}

	return true;
}

bool Package::ExportDataTables(const std::string& output_folder_path)
{
	const std::string audio_folder_path = (output_folder_path + "audio/");
	const std::string video_folder_path = (output_folder_path + "video/");
	const std::string text_folder_path = (output_folder_path + "text/");
	const std::string texture_folder_path = (output_folder_path + "texture/");
	const std::string unknown_folder_path = (output_folder_path + "unknown/");

	if (audio_table.size())
	{
		CreateDirectoryA(audio_folder_path.c_str(), NULL);
		AudioProcessor::ExportAudioToFolder(audio_table, audio_folder_path);
	}
		
	if (movie_table.size())
	{
		CreateDirectoryA(video_folder_path.c_str(), NULL);
		MovieProcessor::ExportMovieToFolder(movie_table, video_folder_path);
	}
		
	if (string_table.size())
	{
		CreateDirectoryA(text_folder_path.c_str(), NULL);
		StringProcessor::ExportTextToFolder(string_table, text_folder_path);
	}

	if (texture_table.size())
	{
		CreateDirectoryA(texture_folder_path.c_str(), NULL);
		TextureProcessor::ExtractTextureToFolder(texture_table, texture_folder_path);
	}

	if (model_table.size())
	{
		ModelProcessor::ExportModelToFile(model_table, "hui");
	}

	if (unknown_table.size())
	{
		CreateDirectoryA(unknown_folder_path.c_str(), NULL);
		for (auto& entry_index : unknown_table)
		{
			auto& entry = entry_table[entry_index];
			auto file_name = unknown_folder_path + helpers::entry_file_name(entry, entry_index) + "_" + helpers::to_hex(entry.A) + ".bin";
			auto file_size = entry.GetFileSize();

			unsigned char* file_raw_data = new (unsigned char[file_size]);
			if (!ExtractEntryToMemory(entry, file_raw_data))
			{
				delete[] file_raw_data;
				continue;
			}

			FILE* unknown_file = fopen(file_name.c_str(), "wb");

			fwrite(file_raw_data, file_size, 1, unknown_file);

			fclose(unknown_file);
			delete[] file_raw_data;
		}
	}

	std::cout << "EntryTable Size: " << entry_table.size() << std::endl;

	return true;
}

bool Package::ExtractEntryToMemory(const Entry& entry, unsigned char* out_buffer, bool force)
{
	unsigned current_block_id = entry.GetStartingBlock();
	unsigned buffer_offset = 0;
	unsigned file_size = entry.GetFileSize();
	unsigned current_patch_id = helpers::get_patch_id(package_path);
	bool entry_in_current_patch = false;

	while (buffer_offset < file_size)
	{
		const Block& block = block_table[current_block_id];
		if (block.patch_id == current_patch_id)
			entry_in_current_patch = true;

		FILE* patch_file = block.GetPatchFile(package_path);

		if (!patch_file)
			return false;

		unsigned char* block_buffer = new (unsigned char[block.size]);
		unsigned char* decrypt_buffer = new (unsigned char[block.size]);
		unsigned char* decomp_buffer = new (unsigned char[Block::MAX_SIZE]);

		fread(block_buffer, 1, block.size, patch_file);

		if (block.flags & 2)
			block.Decrypt(block_buffer, decrypt_buffer, nonce);
		else
			memcpy(decrypt_buffer, block_buffer, block.size);


		if (block.flags & 1)
			block.Decomp(decrypt_buffer, decomp_buffer);
		else
			memcpy(decomp_buffer, decrypt_buffer, block.size);

		int offset = current_block_id == entry.GetStartingBlock() ? entry.GetStartingBlockOffset() : 0;
		int size = min(Block::MAX_SIZE - offset, file_size - buffer_offset);

		memcpy(out_buffer + buffer_offset, decomp_buffer + offset, size);

		buffer_offset += size;
		current_block_id++;

		fclose(patch_file);
		delete[] block_buffer;
		delete[] decrypt_buffer;
		delete[] decomp_buffer;
	}

	return force || entry_in_current_patch;
}

const std::vector<Entry>& Package::GetEntryTable()
{
	return entry_table;
}

const std::vector<Block>& Package::GetBlockTable()
{
	return block_table;
}

Entry* Package::GetEntryByHash(unsigned hash)
{
	if (hash == 0xFFFFFFFF)
		return nullptr;

	for (int i = 0; i < entry_table.size(); i++)
	{
		if (entry_table[i].A == hash)
		{
			return &entry_table[i];
		}
	}
	return nullptr;
}