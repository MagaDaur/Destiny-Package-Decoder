#define _CRT_SECURE_NO_WARNINGS

#pragma comment(lib, "bcrypt.lib")

#include "package_block.h"
#include <bitset>
#include <string>
#include <bcrypt.h>
#include "OodleDecompress.h"
#include <cmath>
#include <Windows.h>

const unsigned char AES_KEY_0[16] =
{
	0xD6, 0x2A, 0xB2, 0xC1, 0x0C, 0xC0, 0x1B, 0xC5, 0x35, 0xDB, 0x7B, 0x86, 0x55, 0xC7, 0xDC, 0x3B,
};

const unsigned char AES_KEY_1[16] =
{
	0x3A, 0x4A, 0x5D, 0x36, 0x73, 0xA6, 0x60, 0x58, 0x7E, 0x63, 0xE6, 0x76, 0xE4, 0x08, 0x92, 0xB5,
};

std::ostream& operator<<(std::ostream& out, const Block& block)
{
	std::cout << "\t\tBlock Offset: 0x" << std::uppercase << std::hex << block.offset << std::endl;
	std::cout << "\t\tBlock Size: 0x" << std::uppercase << std::hex << block.size << std::endl;
	std::cout << "\t\tBlock PatchID: " << std::dec << block.patch_id << std::endl;
	std::cout << "\t\tBlock Flags: " << std::bitset<16>(block.flags) << std::endl;
	std::cout << "\t\tBlock Tag:" << std::uppercase << std::hex << *(unsigned short*)block.tag << std::endl;
	return out;
}

bool Block::Decomp(unsigned char* decrypt_buffer, unsigned char* decomp_buffer) const
{
	if (g_Oodle.Decompress(this, decrypt_buffer, decomp_buffer) <= 0) return false;
	return true;
}

bool Block::Decrypt(unsigned char* block_buffer, unsigned char* decrypt_buffer, unsigned char* nonce) const
{
	BCRYPT_ALG_HANDLE hAesAlg;
	NTSTATUS status;
	status = BCryptOpenAlgorithmProvider(&hAesAlg, BCRYPT_AES_ALGORITHM, nullptr, 0);
	if (status < 0)
		return false;

	status = BCryptSetProperty(hAesAlg, BCRYPT_CHAINING_MODE, (PUCHAR)BCRYPT_CHAIN_MODE_GCM, sizeof(BCRYPT_CHAIN_MODE_GCM), 0);
	if (status < 0)
		return false;

	alignas(alignof(BCRYPT_KEY_DATA_BLOB_HEADER)) unsigned char keyData[sizeof(BCRYPT_KEY_DATA_BLOB_HEADER) + 16];
	BCRYPT_KEY_DATA_BLOB_HEADER* pHeader = (BCRYPT_KEY_DATA_BLOB_HEADER*)keyData;
	pHeader->dwMagic = BCRYPT_KEY_DATA_BLOB_MAGIC;
	pHeader->dwVersion = BCRYPT_KEY_DATA_BLOB_VERSION1;
	pHeader->cbKeyData = 16;
	memcpy(pHeader + 1, flags & 0x4 ? AES_KEY_1 : AES_KEY_0, 16);
	BCRYPT_KEY_HANDLE hAesKey;

	status = BCryptImportKey(hAesAlg, nullptr, BCRYPT_KEY_DATA_BLOB, &hAesKey, nullptr, 0, keyData, sizeof(keyData), 0);
	if (status < 0)
		return false;
	ULONG decryptionResult;
	BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO cipherModeInfo;

	BCRYPT_INIT_AUTH_MODE_INFO(cipherModeInfo);

	cipherModeInfo.dwFlags = 0;

	cipherModeInfo.pbTag = (PUCHAR)tag;
	cipherModeInfo.cbTag = 0x10;

	cipherModeInfo.pbNonce = nonce;
	cipherModeInfo.cbNonce = 0xC;

	status = BCryptDecrypt(hAesKey, block_buffer, size, &cipherModeInfo, 0, 0, decrypt_buffer, size, &decryptionResult, 0);
	if (status < 0)
		return false;

	BCryptDestroyKey(hAesKey);
	BCryptCloseAlgorithmProvider(hAesAlg, 0);
	return true;
}

FILE* Block::GetPatchFile(std::string package_path) const
{
	package_path.replace(package_path.end() - 5, package_path.end() - 4, std::to_string(patch_id));
	FILE* ret = fopen(package_path.c_str(), "rb");
	fseek(ret, offset, SEEK_SET);
	return ret;
}

PackageBlock::PackageBlock(FILE* package, const PackageHeader& header)
{
	nonce[0] ^= (header.package_id >> 8) & 0xFF;
	nonce[11] ^= header.package_id & 0xFF;

	block_table.resize(header.block_table_size);
	
	fseek(package, header.block_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.block_table_size; i++)
		fread(&block_table[i], sizeof(Block), 1, package);
}

bool PackageBlock::ExtractEntryToFile(const std::string& package_path, const Entry& entry, const std::string& output_filename)
{
	unsigned current_block_id = entry.GetStartingBlock();
	unsigned buffer_offset = 0;
	unsigned file_size = entry.GetFileSize();

	unsigned char* out_buffer = new (unsigned char[file_size]);
	memset(out_buffer, 0, file_size);

	if (entry.GetType() == 27 && entry.GetSubType() == 1)
		std::cout << entry << std::endl;

	while (buffer_offset < file_size)
	{
		const Block& block = block_table[current_block_id];
		if (entry.GetType() == 27 && entry.GetSubType() == 1 && block.patch_id)
			std::cout << block << std::endl;

		FILE* patch_file = block.GetPatchFile(package_path);

		if (!patch_file)
		{
			delete[] out_buffer;
			return false;
		}

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

	if (entry.GetType() == 26 && entry.GetSubType() == 7)
	{
		std::string temp_wem_filepath = "output/temp_wem/" + output_filename + ".wem";
		FILE* temp_wem_file = fopen(temp_wem_filepath.c_str(), "wb");
		fwrite(out_buffer, file_size, 1, temp_wem_file);
		fclose(temp_wem_file);

		std::string output_filepath = "output/wav/" + output_filename + ".wav";
		std::string vgmstream_command = "vgmstream\\vgmstream-cli.exe " + temp_wem_filepath + " -o " + output_filepath;
		system(vgmstream_command.c_str());

		DeleteFileA(temp_wem_filepath.c_str());

		std::cout << "Saved WAV audio file to: " << output_filepath << std::endl;
	}
	//else if (entry.GetType() == 26 && entry.GetSubType() == 6)
	//{
	//	std::string temp_bnk_filepath = "output/bnk_unpack/Game Files/" + output_filename + ".bnk";
	//	FILE* temp_bnk_file = fopen(temp_bnk_filepath.c_str(), "wb");
	//	fwrite(out_buffer, file_size, 1, temp_bnk_file);
	//	fclose(temp_bnk_file);

	//	std::string wwiser_command = "output\\bnk_unpack\\Unpack to MP3.bat";
	//	//system(wwiser_command.c_str());
	//}
	else if (entry.GetType() == 27 && entry.GetSubType() == 1)
	{
		std::string usm_filepath = "output/usm/" + output_filename + ".usm";
		FILE* usm_file = fopen(usm_filepath.c_str(), "wb");
		fwrite(out_buffer, file_size, 1, usm_file);
		fclose(usm_file);

		std::cout << "Saved USM movie to: " << usm_filepath << std::endl;
	}
	else if (entry.GetType() == 41 && (entry.GetSubType() == 6 || entry.GetSubType() == 2 || entry.GetSubType() == 1 || entry.GetSubType() == 0))
	{
		std::string hlsl_filepath = "output/hlsl/" + output_filename + ".bin";
		FILE* hlsl_file = fopen(hlsl_filepath.c_str(), "wb");
		fwrite(out_buffer, file_size, 1, hlsl_file);
		fclose(hlsl_file);

		std::cout << "Saved HLSL file to: " << hlsl_filepath << std::endl;
	}
	//else
	//{
	//	std::string unknown_file_path = "output/unknown/" + output_filename + ".bin";
	//	FILE* temp_unknown_file = fopen(unknown_file_path.c_str(), "wb");

	//	fwrite(out_buffer, file_size, 1, temp_unknown_file);

	//	fclose(temp_unknown_file);

	//	std::cout << "Saved unknown file type to: " << unknown_file_path << std::endl;
	//}

	delete[] out_buffer;

	return true;
}

std::vector<Block>& PackageBlock::Get()
{
	return block_table;
}

Block& PackageBlock::operator[](int index)
{
	return block_table[index];
}