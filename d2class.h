#ifndef D2CLASS_H
#define D2CLASS_H

#include <vector>
#include <cstdint>
#include <string>

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
			ret.push_back((T*)(base_addr + struct_size * i));
		return ret;
	};

	uint32_t get_struct_tag()
	{
		return *(uint32_t*)(uint64_t(this) + offset + 0x10);
	}
};

template <class T>
struct D2_RelativeOffset
{
	uint64_t offset;

	T* get()
	{
		if (!offset) return nullptr;
		return (T*)(uint64_t(this) + offset);
	};
};

struct D2_TempDummyStruct
{

};

#endif