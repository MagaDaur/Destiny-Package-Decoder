#pragma once

#define _CRT_SECURE_NO_WARNINGS

#include "package_header.h"
#include "package_block.h"
#include "package_entry.h"

class Package
{
public:
	Package(FILE*, const PackageHeader&);

	const std::vector<Entry>& GetEntryTable();
	const std::vector<Block>& GetBlockTable();

	bool ExtractEntryToFile(size_t, const std::string&, const std::string&);
	bool ExtractEntryToMemory(const Entry&, const std::string&, unsigned char*);

private:
	unsigned char nonce[12] = { 0x84, 0xEA, 0x11, 0xC0, 0xAC, 0xAB, 0xFA, 0x20, 0x33, 0x11, 0x26, 0x99 };

	std::vector<Entry> entry_table;
	std::vector<Block> block_table;
};

extern Package* g_pPackage;