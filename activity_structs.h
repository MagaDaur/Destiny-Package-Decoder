#ifndef ACTIVITY_STRUCTS_H
#define ACTIVITY_STRUCTS_H

#include "d2class.h"
#include "filereference.h"
#include "text_structs.h"

#include <unordered_map>

namespace
{
	typedef std::unordered_map<std::string, std::wstring> strmap;
}

struct StringHash
{
	uint32_t hash;

	std::wstring get_string() const;
};

struct StringHashRef64
{
	FileReference64<D2Class_EF998080> ref;
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

	FileReference64<D2Class_EF998080> string_container;

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

	D2_RelativeOffset<void> unk2;

	D2_Array<void> unk3;
	D2_Array<void> unk4;

	strmap get_strings()
	{
		return 
		{
			{ "location", location_name.get_string() },
			{ "activity", activity_name.get_string() },
			{ "bubble",   bubble_name.get_string() },
		};
	}
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

	std::vector<std::wstring> get_strings()
	{
		return
		{
			strs[0].get_string(),
			strs[1].get_string(),
			strs[2].get_string(),
			strs[3].get_string(),
			strs[4].get_string(),
		};
	}
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

	std::vector<std::wstring> get_strings()
	{
		return
		{
			location_name.get_string(),
			unk_str1.get_string(),
			bubble_name1.get_string(),
			unk_str2.get_string(),
			unk_str3.get_string(),
			bubble_name2.get_string(),
			bubble_name3.get_string(),
			unk_str4[0].get_string(),
			unk_str4[1].get_string(),
			unk_str4[2].get_string(),
			unk_str4[3].get_string(),
		};
	}
};

struct D2Class_C98E8080
{
	uint32_t unk_hash0;

	char pad0[0x14];

	StringHashRef64 unk_str0;

	char pad1[0x8];

	StringHashRef64 unk_str1;

	char pad2[0x8];

	StringHashRef64 unk_str2;

	char pad3[0x8];

	StringHashRef64 unk_str3;

	char pad4[0x10];

	std::vector<std::wstring> get_strings()
	{
		return { unk_str0.get_string(), unk_str1.get_string(), unk_str2.get_string(), unk_str3.get_string() };
	}
};

struct D2Class_C78E8080
{
	uint64_t filesize;

	D2_Array<D2Class_C98E8080> directives;
};

struct D2Class_28898080
{
	FileReference<D2Class_C78E8080> directive_container;
};

struct D2Class_B7978080
{
	char pad0[0x8];
	FileReference64<struct D2Class_B8978080> dialogue_ref;
};

struct D2Class_6A988080
{
	D2_Array<D2Class_28898080> directive_table_array;
	D2_Array<D2Class_B7978080> dialogue_array;

	StringHash bubble_name;

	uint8_t pad0[0x8];

	FileReference<struct D2Class_EB458080> music_data;

	uint8_t pad1[0x54];
};

struct D2Class_8E8E8080
{
	uint64_t filesize;

	StringHash location_name;

	StringHash unused_strings[3];

	D2_RelativeOffset<D2Class_6A988080> audio_data;

	uint8_t pad0[0x8];

	FileReference64<D2Class_8B8E8080> string_data_ref;

	D2_Array<D2Class_00978080> unk_array1;

	D2_Array<D2Class_26898080> str_array;

	D2_Array<D2Class_24898080> map_data;

	uint8_t pad1[0x10];

	StringHash unk_str1;

	FileReference<void> entity_data;

	uint8_t pad2[0x8];

	FileReference64<D2Class_8E8E8080> child_activity;

	std::vector<strmap> get_map_data()
	{
		auto map_data_array = map_data.get();
		std::vector<strmap> ret; ret.reserve(map_data_array.size());
		
		for (const auto& map : map_data_array)
			ret.push_back(map->get_strings());

		return ret;
	}

	std::vector<std::wstring> get_strings()
	{
		return
		{
			location_name.get_string(),
			unused_strings[0].get_string(),
			unused_strings[1].get_string(),
			unused_strings[2].get_string(),
			unk_str1.get_string(),
		};
	}

	D2Class_6A988080* get_audio_data()
	{
		if (audio_data.get_struct_tag() != 0x8080986A) return nullptr;
		return audio_data.get();
	}

	bool export_dialogues(const std::wstring&);

	std::vector<std::wstring> get_activities();
	std::wstring get_activity_dev_name();
};

#endif