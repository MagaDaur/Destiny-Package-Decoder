#pragma once

#include <string>

const unsigned int package_header_size = 0x130;

class PackageHeader
{
public:
	PackageHeader() {};
	PackageHeader(const std::string&);

	unsigned char raw_data[package_header_size];

	unsigned short package_id;
	unsigned short patch_id;

	unsigned short language_id;
	time_t timestamp;

	unsigned int   entry_table_offset;
	unsigned int   entry_size;

	unsigned int block_table_size;
	unsigned int block_table_offset;

	unsigned int hash64_table_size;
	unsigned int hash64_table_offset;
};