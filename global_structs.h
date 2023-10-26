#pragma once


#include <stdint.h>
#include <vector>

struct D2Class_b89f8080 // array_information
{
	uint64_t list_size;
	uint32_t list_object_type;

	uint32_t unk1;
};

struct FileReference
{
	FileReference(uint32_t h) : hash(h) {};

	uint32_t hash;

	bool valid();

	int get_package_id();

	int get_entry_id();

	uint8_t* get_data();
};

struct FileReference64
{
	FileReference64(uint64_t h) : hash(h) {};

	uint64_t hash;

	bool valid();

	int get_package_id();

	int get_entry_id();

	uint8_t* get_data();
};

template<class T>
struct D2_Array
{
	uint64_t size;
	uint64_t offset;

	std::vector<T*> get()
	{
		std::vector<T*> ret{};

		uint64_t base_addr = uint64_t(this) + offset + 0x18;
		uint64_t struct_size = sizeof(T);

		for (int i = 0; i < size; i++)
		{
			ret.push_back((T*)(base_addr + struct_size * i));
		}

		return ret;
	}
};