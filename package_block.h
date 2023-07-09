#pragma once
#include "package_header.h"
#include "package_entry.h"
#include <vector>
#include <Windows.h>

struct Block
{
	unsigned offset; // 0x0
	unsigned size; // 0x4
	unsigned short patch_id; // 0x8
	unsigned short flags; // 0xA
	unsigned char pad[0x14]; // 0xC
	unsigned char tag[0x10]; // 0x20

	FILE* GetPatchFile(std::string) const;
	bool Decrypt(unsigned char*, unsigned char*, unsigned char*) const;
	bool Decomp(unsigned char*, unsigned char*) const;

	friend std::ostream& operator<<(std::ostream&, const Block&);

	static const unsigned MAX_SIZE = 0x40000;
};