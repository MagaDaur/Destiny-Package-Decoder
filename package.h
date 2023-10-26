#pragma once

#define _CRT_SECURE_NO_WARNINGS

#include "package_header.h"
#include "package_block.h"
#include "package_entry.h"
#include "global_structs.h"
#include <array>
#include <map>
#include <vector>

class Package
{
public:
	Package() : header() {};
	Package(const std::string&);

	const std::vector<Entry>& GetEntryTable();
	const std::vector<Block>& GetBlockTable();

	bool ExtractEntry(const Entry&, unsigned char*, bool force = false);
	bool ExtractEntryByReference(FileReference, unsigned char*);

	bool SetupDataTables();
	bool ExportDataTables(const std::string&);

	FILE* GetFile();

	bool valid() { return header.timestamp >= 0; };

//private:
	unsigned char nonce[12] = { 0x84, 0xEA, 0x11, 0xC0, 0xAC, 0xAB, 0xFA, 0x20, 0x33, 0x11, 0x26, 0x99 };

	std::vector<Entry> entry_table;
	std::vector<Block> block_table;

	std::vector<size_t> audio_table;
	std::vector<size_t> texture_table;
	std::vector<size_t> movie_table;
	std::vector<size_t> model_table;
	std::vector<size_t> string_table;

	std::vector<size_t> unknown_table;

	std::string package_path;
	std::string package_short_path;

public:
	PackageHeader header;

	inline static std::map<uint32_t, Package> package_table;
	inline static std::map<uint32_t, uint32_t> lastest_package_patches;
	inline static std::map<uint64_t, uint32_t> hash64_references;

	static Package* GetPackage(int, int patch_id = -1, int language_id = 0);
};

extern Package* g_pPackage;