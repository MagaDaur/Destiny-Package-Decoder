#pragma once

#include <vector>
#include <string>

struct StringHeader
{
	unsigned long long filesize; // 0x0

	unsigned long long string_count; // 0x8
	unsigned long long array_data_offset; // 0x10

	unsigned long long unk1; // 0x18
	unsigned long long unk2; // 0x20

	unsigned long long unk3_size; // 0x28
	unsigned long long unk3_offset; // 0x30

	unsigned long long string_parts_size; // 0x38
	unsigned long long string_parts_offset; // 0x40

	unsigned unk4; // 0x48

	unsigned next_struct_hash; // 0x4C
};

class StringProcessor
{
public:
	static bool ExportTextToFolder(const std::vector<size_t>&, const std::string&);
};