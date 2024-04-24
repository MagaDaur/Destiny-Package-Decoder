#ifndef ACTIVITY_STRUCTS_H
#define ACTIVITY_STRUCTS_H

#include "d2class.h"
#include "filereference.h"

struct StringHash
{
	uint32_t hash;

	std::wstring get_string() const;
};

struct D2Class_2E898080
{
	StringHash short_name;

	uint32_t zeros1;

	uint32_t unk_hash1;
	uint32_t unk_hash2;

	D2_RelativeOffset<const char> activity_name;
};

struct D2Class_8B8E8080
{
	uint64_t filesize;

	StringHash location_name;
	uint8_t pad1[0xC];

	uint64_t unk_hash64;

	uint8_t pad2[0x28];

	D2_Array<D2Class_2E898080> location_activities;

	D2_RelativeOffset<const char> destination_name;
};

struct D2Class_20798080
{
	uint8_t pad1[0x20];

	StringHash unk_str;
};

struct D2Class_24898080
{
	StringHash location_name;
	StringHash activity_name;
	StringHash bubble_name;

	uint32_t unk1;

	D2_RelativeOffset<D2_TempDummyStruct> unk2;

	D2_Array<D2_TempDummyStruct> unk3;
	D2_Array<D2_TempDummyStruct> unk4;
};

struct D2Class_00978080
{
	uint64_t zeros1;
	StringHash unk_str;
	uint32_t zeros2;

	uint64_t unk_num;
};

struct D2Class_48898080
{
	StringHash strs[5];
	FileReference<void> unk_file;
};

struct D2Class_26898080
{
	StringHash location_name;
	StringHash unk_str1;
	StringHash bubble_name1;
	StringHash unk_str2;
	StringHash unk_str3;
	StringHash bubble_name2;
	StringHash bubble_name3;
	StringHash unk_str4[8];

	uint16_t unk_ints[2];
	uint8_t pad0[0x8];

	D2_Array<D2Class_48898080> unk_array;

	uint64_t zeros[2];
};

struct D2Class_28898080
{
	FileReference<void> directive_table;
};

struct D2Class_B7978080
{
	FileReference<void> dialogue_table;
};

struct D2Class_EB458080
{
	uint64_t filesize;

	D2_RelativeOffset<const char> music_template_name;
};

struct D2Class_6A988080
{
	D2_Array<D2Class_28898080> directive_table_array;
	D2_Array<D2Class_B7978080> dialogue_table_array;

	StringHash bubble_name;

	uint8_t pad0[0x8];

	FileReference<D2Class_EB458080> music_data;

	uint8_t pad1[0x54];
};

struct D2Class_8E8E8080
{
	uint64_t filesize;

	StringHash location_name;

	StringHash unused_strings[3];

	D2_RelativeOffset<D2Class_6A988080> audio_data;

	uint8_t pad0[0x8];

	FileReference64<D2Class_8B8E8080> string_container;

	D2_Array<D2Class_00978080> unk_array1;

	D2_Array<D2Class_26898080> str_array;

	D2_Array<D2Class_24898080> map_data;

	uint8_t pad1[0x10];

	StringHash unk_str1;

	FileReference<void> unk_file;

	uint8_t pad2[0x8];

	FileReference64<void> child_activity_data;
};

#endif