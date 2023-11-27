#pragma once

#include "text_structs.h"

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

	std::wstring get_string()
	{
		if (hash == 0x811c9dc5) return L"";

		auto container_ref = Package::InvestmentModule::GetStringContainerByIndex(container_index);
		if (!container_ref)
			return L"";

		auto container_buffer = container_ref->get_data();
		if (!container_buffer)
			return L"";

		auto container_hashes = container_buffer->string_hashes.get();

		int found = -1;
		for (int i = 0; i < container_hashes.size(); i++)
		{
			if (container_hashes[i]->string_hash == hash)
			{
				found = i;
				break;
			}
		}

		if (found == -1)
			return L"";

		auto string_container = container_buffer->string_container[12].get_data();
		if (!string_container)
			return L"";

		auto string_vector = string_container->strings.get();
		if (found >= string_vector.size())
			return L"";

		return string_vector[found]->get_string();
	};
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

struct D2Class_CF548080
{
	D2_StrIndexRef unk_str;
};

struct D2Class_9F548080
{
	uint64_t filesize; // 0x0

	D2_RelativeOffset<D2Class_EF548080> psDestruction;

	uint8_t pad1[0x50];

	D2_RelativeOffset<D2Class_CF548080> ps_unk1;

	uint8_t pad2[0x20];

	uint16_t icon_index;

	uint16_t unk1;

	D2_StrIndexRef item_name;

	uint32_t unk2;

	D2_StrIndexRef item_type;

	D2_StrIndexRef unk_str1;

	D2_StrIndexRef displaySource;

	D2_StrIndexRef flavorText;
};