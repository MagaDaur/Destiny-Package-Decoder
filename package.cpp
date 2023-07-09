#include "package.h"
#include "helpers.h"

#include "Textures.h"
#include "Strings.h"

#include <string>

Package::Package(FILE* package, const PackageHeader& header)
{
	nonce[0] ^= (header.package_id >> 8) & 0xFF;
	nonce[11] ^= header.package_id & 0xFF;

	block_table.resize(header.block_table_size);
	fseek(package, header.block_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.block_table_size; i++)
		fread(&block_table[i], sizeof(Block), 1, package);

	entry_table.resize(header.entry_size);
	fseek(package, header.entry_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.entry_size; i++)
		fread(&entry_table[i], sizeof(Entry), 1, package);
}

bool Package::ExtractEntryToFile(size_t entry_index, const std::string& package_path, const std::string& patch_folder)
{
	const Entry& entry = entry_table[entry_index];
	const std::string file_name = std::to_string(entry.GetType()) + "_" + std::to_string(entry.GetSubType()) + "_" + helpers::to_hex(entry_index) + "_" + helpers::to_hex(entry.GetRefID());
	const size_t package_name_begin = package_path.find_last_of('\\') + 1;
	const size_t package_name_end = package_path.find_last_of('.');
	const std::string output_patch_directory_path = "output/" + patch_folder;
	const std::string output_package_directory_path = output_patch_directory_path + package_path.substr(package_name_begin, package_name_end - package_name_begin) + "/";

	CreateDirectoryA(output_patch_directory_path.c_str(), NULL);
	CreateDirectoryA(output_package_directory_path.c_str(), NULL);

	unsigned file_size = entry.GetFileSize();
	unsigned char* out_buffer = new (unsigned char[file_size]);

	if (!ExtractEntryToMemory(entry, package_path, out_buffer))
	{
		delete[] out_buffer;
		return false;
	}

	if (entry.GetType() == 26 && entry.GetSubType() == 7)
	{
		const std::string wav_directory_path = output_package_directory_path + "wav/";
		const std::string temp_wem_file_path = wav_directory_path + file_name + ".wem";
		CreateDirectoryA(wav_directory_path.c_str(), NULL);


		FILE* temp_wem_file = fopen(temp_wem_file_path.c_str(), "wb");
		fwrite(out_buffer, file_size, 1, temp_wem_file);
		fclose(temp_wem_file);

		std::string output_filepath = wav_directory_path + file_name + ".wav";
		std::string vgmstream_command = "vgmstream\\vgmstream-cli.exe " + temp_wem_file_path + " -o " + output_filepath;
		system(vgmstream_command.c_str());

		DeleteFileA(temp_wem_file_path.c_str());
	}
	else if (entry.GetType() == 27 && entry.GetSubType() == 1)
	{
		const std::string usm_directory_path = output_package_directory_path + "usm/";
		const std::string usm_file_path = usm_directory_path + file_name + ".usm";
		CreateDirectoryA(usm_directory_path.c_str(), NULL);

		FILE* usm_file = fopen(usm_file_path.c_str(), "wb");
		fwrite(out_buffer, file_size, 1, usm_file);
		fclose(usm_file);
	}
	else if (entry.GetType() == 27 && entry.GetSubType() == 0)
	{
		if (1 != 1) // NOT IMPLEMENTED YET
		{
			const std::string hkx_directory_path = output_package_directory_path + "hkx/";
			const std::string hkx_file_path = hkx_directory_path + file_name + ".hkx";
			CreateDirectoryA(hkx_directory_path.c_str(), NULL);

			FILE* hkx_file = fopen(hkx_file_path.c_str(), "wb");
			fwrite(out_buffer, file_size, 1, hkx_file);
			fclose(hkx_file);
		}
	}
	else if (entry.GetType() == 41 && (entry.GetSubType() == 6 || entry.GetSubType() == 2 || entry.GetSubType() == 1 || entry.GetSubType() == 0))
	{
		if (1 != 1) // NOT IMPLEMENTED YET
		{
			CreateDirectoryA((output_package_directory_path + "shader/").c_str(), NULL);
			const std::string shader_directory_path = output_package_directory_path + "shader/" + std::to_string(entry.GetSubType()) + "/";
			const std::string shader_file_path = shader_directory_path + file_name + ".bin";
			CreateDirectoryA(shader_directory_path.c_str(), NULL);

			FILE* shader_file = fopen(shader_file_path.c_str(), "wb");
			fwrite(out_buffer, file_size, 1, shader_file);
			fclose(shader_file);

			const std::string midoto_shader_command = "shader_decompiler\\decompiler.exe -D " + shader_file_path;
			system(midoto_shader_command.c_str());

			DeleteFileA(shader_file_path.c_str());
		}
	}
	else if (entry.GetType() == 32 && entry.GetSubType() == 1)
	{
		const std::string image_direcroty_path = output_package_directory_path + "image/";
		const std::string image_file_path = image_direcroty_path + file_name + ".dds";
		const std::wstring w_image_file_path = std::wstring(image_file_path.begin(), image_file_path.end());
		CreateDirectoryA(image_direcroty_path.c_str(), NULL);

		TextureProcessor::ExtractImageToFile(entry_table[entry.GetRefID()], (TextureHeader*)out_buffer, package_path, w_image_file_path);
	}
	else if (entry.GetType() == 40 && entry.GetSubType() == 1)
	{
		// SKIP
	}
	else if (entry.GetType() == 8 && entry.GetSubType() == 0 && entry.A == 0x808099f1)
	{
		const std::string text_direcroty_path = output_package_directory_path + "texts/";
		const std::string text_file_path = text_direcroty_path + file_name + ".txt";
		const std::wstring w_text_file_path = std::wstring(text_file_path.begin(), text_file_path.end());
		CreateDirectoryA(text_direcroty_path.c_str(), NULL);

		StringProcessor::ExportStringsToFile(out_buffer, w_text_file_path);
	}
	else
	{
		const std::string unknown_direcroty_path = output_package_directory_path + "unknown/";
		const std::string unknown_file_path = unknown_direcroty_path + file_name + "_" + helpers::to_hex(entry.A) + ".bin";
		CreateDirectoryA(unknown_direcroty_path.c_str(), NULL);

		FILE* unknown_file = fopen(unknown_file_path.c_str(), "wb");
		fwrite(out_buffer, file_size, 1, unknown_file);
		fclose(unknown_file);
	}

	delete[] out_buffer;

	return true;
}

bool Package::ExtractEntryToMemory(const Entry& entry, const std::string& package_path, unsigned char* out_buffer)
{
	unsigned current_block_id = entry.GetStartingBlock();
	unsigned buffer_offset = 0;
	unsigned file_size = entry.GetFileSize();
	unsigned current_patch_id = helpers::get_patch_id(package_path);
	bool entry_in_current_patch = false;

	if (file_size < 4) return false;

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

		int offset = 0;
		if (current_block_id == entry.GetStartingBlock())
			offset = entry.GetStartingBlockOffset();

		int size = min(Block::MAX_SIZE - offset, file_size - buffer_offset);

		memcpy(out_buffer + buffer_offset, decomp_buffer + offset, size);

		buffer_offset += size;
		current_block_id++;

		fclose(patch_file);
		delete[] block_buffer;
		delete[] decrypt_buffer;
		delete[] decomp_buffer;
	}

	if (*(uint32_t*)(out_buffer) == 0xCDCDCDCD) return false; // REDACTED

	return entry_in_current_patch;// || (entry.GetRefID() < entry_table.size()); // <---- Open this with new patch
}

const std::vector<Entry>& Package::GetEntryTable()
{
	return entry_table;
}

const std::vector<Block>& Package::GetBlockTable()
{
	return block_table;
}