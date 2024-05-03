#ifndef INVESTMENT_STRUCTS_H
#define INVESTMENT_STRUCTS_H

#include "filereference.h"
#include "d2class.h"

struct D2Class_0E5A8080
{
	uint32_t unk1;
	uint32_t unk2;
	uint32_t unk3;
	uint32_t unk4;

	FileReference64<D2Class_EF998080> strings;

	uint64_t unk5;
};

struct D2Class_095A8080
{
	uint64_t filesize;
	D2_Array<D2Class_0E5A8080> string_container;
};

struct D2_StrIndexRef
{
	uint32_t container_index;
	uint32_t hash;

	std::wstring get_string();
};

struct D2Class_EF548080
{
	D2_StrIndexRef destructionTerm;

	uint32_t unk1;
	uint32_t unk_hash1;
	uint32_t unk2;
	uint32_t unk_hash2;
	uint32_t unk3;
};

struct D2Class_D0548080
{
	D2_StrIndexRef quest_name;
	D2_StrIndexRef quest_step;
	D2_StrIndexRef quest_vendor_line;
};

struct D2Class_9F548080
{
	uint64_t filesize;

	D2_RelativeOffset<D2Class_EF548080> psDestruction;

	uint8_t pad1[0x48];

	D2_RelativeOffset<D2Class_D0548080> quest_info;

	uint8_t pad2[0x28];

	uint16_t icon_index; // 0x88

	uint16_t secondary_icon_index;

	D2_StrIndexRef item_name;

	uint32_t unk2;

	D2_StrIndexRef item_type;

	D2_StrIndexRef completeText;

	D2_StrIndexRef displaySource;

	D2_StrIndexRef flavorText;

	D2_Array<void> unk_array0;

	uint32_t unk_hashes[6];

	std::vector<std::pair<Package*, Entry>> get_icons();
};

struct D2Class_D53E8080
{
	FileReference<uint8_t[]> texture_ref;
};

struct D2Class_D23E8080
{
	D2_Array<D2Class_D53E8080> texture_list;
};

struct D2Class_CD3E8080
{
	D2_Array<D2Class_D23E8080> texture_matrix;

	uint64_t unk[2];
};

struct D2Class_CF3E8080
{
	uint64_t filesize;
	uint64_t unk1;

	D2_RelativeOffset<D2Class_CD3E8080> ref_texture_matrix;
};

struct D2Class_B83E8080
{
	uint64_t filesize;
	uint64_t unk1;

	uint32_t unk_hash1;

	FileReference<D2Class_CF3E8080> icons_info_array[7];

	float unk_vec4[4];

	std::vector<FileReference<D2Class_CF3E8080>*> get_valid_icons()
	{
		std::vector<FileReference<D2Class_CF3E8080>*> ret;
		for (auto& icon_info : icons_info_array)
		{
			if (icon_info.valid())
			{
				ret.push_back(&icon_info);
			}
		}
		return ret;
	}
};

struct D2Class_075A8080
{
	uint32_t item_hash;

	uint8_t pad1[0xC];

	FileReference<D2Class_B83E8080> icon_container;

	uint8_t pad2[0xC];
};

struct D2Class_015A8080
{
	uint64_t filesize;

	D2_Array<D2Class_075A8080> icon_ref_container;
};

struct D2Class_9D548080
{
	uint32_t api_hash;

	uint8_t pad0[0xC];

	FileReference<D2Class_9F548080> item_string_data;

	uint8_t pad1[0xC];
};

struct D2Class_99548080
{
	uint64_t filesize;

	D2_Array<D2Class_9D548080> items;
};

struct D2Class_9D798080
{
	uint8_t pad0[0xA8];

	uint32_t api_hash;
};

#endif