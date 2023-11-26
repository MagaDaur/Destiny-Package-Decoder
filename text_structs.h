#pragma once

#include "d2class.h"
#include <filesystem>

struct D2Class_F7998080 // string data
{
	uint64_t unk1; // 0x0

	uint64_t string_offset; // 0x8

	uint32_t c59d1c81; // 0x10

	uint16_t byte_length; // 0x14
	uint16_t string_length; // 0x16

	uint64_t unk2; // 0x18

	std::wstring get_string()
	{
		std::u8string ret; ret.resize(byte_length);
		char8_t* buffer = (char8_t*)(uint64_t(this) + 0x8 + string_offset);

		memcpy(ret.data(), buffer, byte_length);

		return std::filesystem::path(ret).generic_wstring();
	}
};

struct D2Class_70008080
{
	uint32_t string_hash;
};

struct D2Class_F1998080
{
	uint64_t filesize; // 0x0

	D2_Array<D2Class_F7998080> strings; // 0x8
};

struct D2Class_EF998080
{
	uint64_t filesize;

	D2_Array<D2Class_70008080> string_hashes;

	FileReference<D2Class_F1998080> string_container[13];
};

struct D2Class_F19E8080
{
	uint64_t offset;

	uint32_t unk1;
	uint32_t unk2;

	uint32_t unk3;
	uint32_t unk4;

	char* get_string()
	{
		return (char*)this + offset;
	}
};

struct D2Class_ED9E8080
{
	uint64_t filesize;

	uint64_t unk1;
	uint64_t unk2;

	FileReference<uint8_t[]> unk_ref1;
	uint32_t unk3;

	uint64_t unk4;

	D2_Array<D2Class_F19E8080> paths;
};