#define _CRT_SECURE_NO_WARNINGS

#pragma comment(lib, "bcrypt.lib")

#include "package_block.h"
#include <bitset>
#include <string>
#include <bcrypt.h>

std::ostream& operator<<(std::ostream& out, const Block& block)
{
	std::cout << "Block Offset: 0x" << std::uppercase << std::hex << block.offset << std::endl;
	std::cout << "Block Size: " << std::dec << block.size << std::endl;
	std::cout << "Block PatchID: " << block.patch_id << std::endl;
	std::cout << "Block Flags: " << std::bitset<16>(block.flags) << std::endl;
	std::cout << "Block Hash: " << std::uppercase << std::hex << *(unsigned short*)block.hash << std::endl;
	return out;
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
	block_table.resize(header.block_table_size);
	
	fseek(package, header.block_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.block_table_size; i++)
		fread(&block_table[i], sizeof(Block), 1, package);
}

bool PackageBlock::Extract(const std::string& package_path, const Entry& entry, unsigned char* out_buffer)
{
	unsigned current_block_id = entry.GetStartingBlock();
	unsigned last_block_id = current_block_id + (entry.GetStartingBlockOffset() + entry.GetFileSize()) / Block::MAX_SIZE;
	unsigned buffer_offset = 0;

	while (current_block_id <= last_block_id)
	{
		const Block& block = block_table[current_block_id];

		FILE* patch_file = block.GetPatchFile(package_path);
		if (!patch_file) return false;

		unsigned char* block_buffer = new (unsigned char[block.size]);
		unsigned char* decrypt_buffer = new (unsigned char[block.size]);
		unsigned char* decomp_buffer = new (unsigned char[Block::MAX_SIZE]);

		fread(block_buffer, 1, block.size, patch_file);

		decrypt_buffer = block_buffer;
		if (block.flags & 2)
			block.Decrypt(block_buffer, decrypt_buffer);

		decomp_buffer = decrypt_buffer;
		if (block.flags & 1)
			block.Decomp(decrypt_buffer, decomp_buffer);

		current_block_id++;

		delete[] block_buffer;
		delete[] decrypt_buffer;
		delete[] decomp_buffer;
	}

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