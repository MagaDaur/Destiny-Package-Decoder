#pragma once

#include "global_structs.h"

struct Destiny_StringArray
{
	uint64_t filesize; // 0x0

	uint64_t array_size; // 0x8
	uint64_t array_offset; // 0x10
};

struct __f7998080 // string array
{
	uint64_t unk1; // 0x0

	uint64_t string_offset; // 0x8

	uint32_t c59d1c81; // 0x10

	uint16_t byte_length; // 0x14
	uint16_t string_length; // 0x16

	uint64_t unk2; // 0x18
};

