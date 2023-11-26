#include "package_header.h"

#include <cstdio>
#include <sstream>
 
PackageHeader::PackageHeader(const std::string& package_path) : package_path(package_path)
{
	FILE* package = fopen(package_path.c_str(), "rb");

	fread(raw_data, sizeof(char), package_header_size, package);

	package_id = *(uint16_t*)&raw_data[0x10];
	timestamp = *(time_t*)&raw_data[0x20];
	patch_id = *(uint16_t*)&raw_data[0x30];

	language_id = *(uint16_t*)&raw_data[0x32];

	entry_table_size = *(uint32_t*)&raw_data[0x60];
	entry_table_offset = *(uint32_t*)&raw_data[0x64];

	block_table_size = *(uint32_t*)&raw_data[0x68];
	block_table_offset = *(uint32_t*)&raw_data[0x6C];

	hash64_table_size = *(uint32_t*)&raw_data[0xB8];
	hash64_table_offset = *(uint32_t*)&raw_data[0xBC];

	fclose(package);
}

std::string Helpers::to_hex(uint64_t n)
{
	std::stringstream ss;
	ss << std::hex << std::uppercase << n;
	return ss.str();
}

std::wstring Helpers::to_wstring(std::string src)
{
	return std::wstring(src.begin(), src.end());
}

std::u8string Helpers::to_u8string(std::string src)
{
	return std::u8string(src.begin(), src.end());
}