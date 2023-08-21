#pragma once

#include <iostream>

const unsigned int package_header_size = 0x12C;

class PackageHeader
{
public:
	friend class PackageEntry;
	friend class Package;

	PackageHeader(FILE* package);

	friend std::ostream& operator<<(std::ostream&, const PackageHeader&);

	unsigned char raw_data[package_header_size];

	unsigned short package_id;
	unsigned short patch_id;

	unsigned int unk;

	unsigned int   entry_table_offset;
	unsigned int   entry_size;

	unsigned int block_table_size;
	unsigned int block_table_offset;
};