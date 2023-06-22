#pragma once
#include "package_header.h"
#include "package_entry.h"
#include <vector>

struct Block
{
	unsigned offset;
	unsigned size;
	unsigned short patch_id;
	unsigned short flags;
	char unk[0x14];
	char hash[16];

	FILE* GetPatchFile(std::string) const;

	friend std::ostream& operator<<(std::ostream&, const Block&);

	static const unsigned MAX_SIZE = 0x40000;
};

class PackageBlock
{
public:
	PackageBlock(FILE*, const PackageHeader&);

	bool Extract(const std::string&, const Entry&, unsigned char*);

	Block& operator[](int);
	std::vector<Block>& Get();
private:
	std::vector<Block> block_table;
};