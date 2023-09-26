#pragma once

#include "global_structs.h"

struct Destiny_StringArray
{
	uint64_t filesize; // 0x0

	uint64_t array_size; // 0x8
	uint64_t array_offset; // 0x10
};

struct Destiny_StringData // string data
{
	uint64_t unk1; // 0x0

	uint64_t string_offset; // 0x8

	uint32_t c59d1c81; // 0x10

	uint16_t byte_length; // 0x14
	uint16_t string_length; // 0x16

	uint64_t unk2; // 0x18
};


struct D2Class_80809212
{
	uint64_t filesize;
	
	uint64_t unk_count;
	uint64_t unk_offset; // 0x10
};

struct D2Class_80809214
{
	uint64_t unk;

};