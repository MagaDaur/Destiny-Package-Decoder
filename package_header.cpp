#define _CRT_SECURE_NO_WARNINGS

#include "package_header.h"
#include <cstdio>
 
PackageHeader::PackageHeader(const std::string& package_path)
{
	FILE* package = fopen(package_path.c_str(), "rb");

	fseek(package, 0, SEEK_SET);
	fread(raw_data, sizeof(char), package_header_size, package);

	package_id = *(unsigned short*)&raw_data[0x10];
	timestamp = *(time_t*)&raw_data[0x20];
	patch_id = *(unsigned short*)&raw_data[0x30];

	entry_table_offset = *(unsigned int*)&raw_data[0x44];
	entry_size = *(unsigned int*)&raw_data[0x60];

	block_table_size = *(unsigned int*)&raw_data[0x68];
	block_table_offset = *(unsigned int*)&raw_data[0x6C];

	fclose(package);
}