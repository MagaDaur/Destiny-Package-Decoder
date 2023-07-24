#pragma once

#define _CRT_SECURE_NO_WARNINGS

#include "package_header.h"
#include "package_block.h"
#include "package_entry.h"

class Package
{
public:
	Package(FILE*, const PackageHeader&, const std::string&);

	const std::vector<Entry>& GetEntryTable();
	const std::vector<Block>& GetBlockTable();

	bool ExtractEntryToMemory(const Entry&, unsigned char*, bool force = false);

	bool SetupDataTables();
	bool ExportDataTables(const std::string&);

	Entry* GetEntryByHash(unsigned);

private:
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
};

extern Package* g_pPackage;