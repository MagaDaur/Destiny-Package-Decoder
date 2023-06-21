#pragma once
#include "package_header.h"
#include <vector>

struct Block
{
	unsigned offset;
	unsigned size;
	unsigned short patch_id;
	unsigned short bit_flag;
	char unk[0x14];
	char hash[16];

	friend std::ostream& operator<<(std::ostream&, const Block&);
};

class PackageBlock
{
public:
	PackageBlock(FILE*, const PackageHeader&);

	std::vector<Block> block_table;
};