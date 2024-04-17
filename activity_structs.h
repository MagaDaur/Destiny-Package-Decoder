#pragma once

#include <cstdint>
#include <string>

#include "package.h"
#include "d2class.h"
#include "filereference.h"
#include "text_structs.h"

struct StringHashReference
{
	uint32_t hash;

	std::wstring get_string() const;
};

struct D2Class_2E898080
{
	StringHashReference short_name;

	uint32_t zeros1;

	uint32_t unk_hash1;
	uint32_t unk_hash2;

	D2_RelativeOffset<const char> activity_name;
};

struct D2Class_8B8E8080
{
	uint64_t filesize;

	StringHashReference location_name;
	uint8_t pad1[0xC];

	uint64_t unk_hash64;

	uint8_t pad2[0x28];

	D2_Array<D2Class_2E898080> location_activities;

	D2_RelativeOffset<const char> destination_name;
};

struct D2Class_20798080
{
	uint8_t pad1[0x20];

	StringHashReference unk_str;
};

struct D2Class_24898080
{
	StringHashReference location_name;
	StringHashReference activity_name;
	StringHashReference bubble_name;

	uint32_t unk1;

	D2_RelativeOffset<D2_TempDummyStruct> unk2;

	D2_Array<D2_TempDummyStruct> unk3;
	D2_Array<D2_TempDummyStruct> unk4;
};

struct D2Class_8E8E8080
{
	uint64_t filesize;

	StringHashReference location_name;

	StringHashReference unk_strs[3];

	D2_RelativeOffset<D2Class_20798080> unk_struct;

	uint64_t unk1;

	FileReference64<D2Class_8B8E8080> string_container;

	uint8_t pad1[0x20];

	D2_Array<D2Class_24898080> map_data;

	StringHashReference unk_str1;
};