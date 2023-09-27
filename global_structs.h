#pragma once

#include <stdint.h>
#include <vector>

struct Struct_b89f8080 // array_information
{
	uint64_t list_size;
	uint32_t list_object_type;

	uint32_t unk1;
};

struct Hash_Reference
{
	Hash_Reference(uint32_t h) : hash(h) {};

	uint32_t hash;

	bool valid()
	{
		return (int)hash != -1 && hash;
	}

	int get_package_id()
	{
		return ((hash >> 13) & 0x3FF) + (((hash >> 23) & 0x3) - 1) * 0x400;
	}

	int get_entry_id()
	{
		return hash & 0x1FFF;
	}
};

template<class T>
struct Struct_Table
{
	uint64_t size;
	uint64_t offset;

	std::vector<T> get()
	{
		std::vector<T> ret{};

		uint64_t base_addr = uint64_t(this) + offset + 0x18;
		uint64_t struct_size = sizeof(T);

		for (int i = 0; i < size; i++)
		{
			ret.push_back(*(T*)(base_addr + struct_size * i));
		}

		return ret;
	}
};