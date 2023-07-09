#define _CRT_SECURE_NO_WARNINGS

#pragma comment(lib, "bcrypt.lib")

#include "package_block.h"
#include <bitset>
#include <string>
#include <bcrypt.h>
#include "OodleDecompress.h"
#include <cmath>
#include <Windows.h>
#include "helpers.h"

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
	return g_pOodle->Decompress(this, decrypt_buffer, decomp_buffer);
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

	alignas(alignof(BCRYPT_KEY_DATA_BLOB_HEADER)) unsigned char keyData[sizeof(BCRYPT_KEY_DATA_BLOB_HEADER) + 16] = { 0 };
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
	if(ret) fseek(ret, offset, SEEK_SET);
	return ret;
}

