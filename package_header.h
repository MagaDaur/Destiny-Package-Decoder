#ifndef PACKAGE_HEADER_H
#define PACKAGE_HEADER_H

#include <cstdio>
#include <cstdint>
#include <string>

namespace Helpers
{
	std::string to_hex(uint64_t);
	std::wstring to_wstring(std::string);
	std::u8string to_u8string(std::string);
}

static const uint32_t package_header_size = 0x130;

class PackageHeader
{
public:
	PackageHeader(const std::string&);

	time_t GetCreationDate() { return timestamp; };
	std::string GetFilePath() { return package_path; };

	uint64_t GetHash() { return package_id | (patch_id << 16) | (language_id << 32); };

protected:
	uint64_t package_id;
	uint64_t patch_id;

	uint64_t language_id;
	time_t timestamp;

	uint32_t entry_table_offset;
	uint32_t entry_table_size;

	uint32_t block_table_size;
	uint32_t block_table_offset;

	uint32_t hash64_table_size;
	uint32_t hash64_table_offset;

	const std::string package_path;

private:
	uint8_t raw_data[package_header_size];
};

struct Entry
{
	struct entry_raw
	{
		uint32_t a;
		uint32_t b;
		uint32_t c;
		uint32_t d;
	};

	Entry(entry_raw entry, uint32_t entry_idx)
	{
		ref_entry_id = entry.a & 0x1FFF;
		ref_package_id = ((entry.a >> 13) & 0x3FF) + (((entry.a >> 23) & 0x3) - 1) * 0x400;

		starting_block_index = entry.c & 0x3FFF;
		starting_block_offset = ((entry.c >> 14) & 0x3FFF) << 4;

		file_size = (entry.d & 0x3FFFFFF) << 4 | (entry.c >> 28) & 0xF;

		type = (entry.b >> 9) & 0x7F;

		subtype = (entry.b >> 6) & 0x7;

		class_type = entry.a;

		entry_id = entry_idx;
	};

	std::string GenerateName() const;

	uint32_t type;
	uint32_t subtype;

	uint32_t class_type;

	uint32_t file_size;

	uint32_t ref_entry_id;
	uint32_t ref_package_id;

	uint32_t starting_block_index;
	uint32_t starting_block_offset;

	uint32_t entry_id;
};

struct Block
{
	uint32_t offset; // 0x0
	uint32_t size; // 0x4
	uint16_t patch_id; // 0x8
	uint16_t flags; // 0xA
	uint8_t pad[0x14]; // 0xC
	uint8_t tag[0x10]; // 0x20

	bool Decrypt(uint8_t*, uint8_t*, uint8_t*) const;
	bool Decomp(uint8_t*, uint8_t*) const;

	static const uint32_t MAX_SIZE = 0x40000;
};

struct HashContainer
{
	uint64_t tag64;
	uint32_t tag32;
	uint32_t class_type;
};

#endif