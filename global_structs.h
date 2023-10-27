#pragma once

#include <stdint.h>
#include <vector>
#include <memory>

template<class T>
class FileReference
{
public:
	FileReference(uint32_t tag) : tag(tag) {};

	bool valid() const { return (tag && tag != 0xffffffff); };

	int get_package_id() const { return ((tag >> 13) & 0x3FF) + (((tag >> 23) & 0x3) - 1) * 0x400; };

	int get_entry_id() const { return tag & 0x1FFF; };

	std::unique_ptr<T> get_data() const;

private:
	uint32_t tag;
};

template<class T>
class FileReference64
{
public:
	FileReference<T> GetTag32() const;
private:
	uint64_t tag64;
};

template<class T>
struct D2_Array
{
	uint64_t size;
	uint64_t offset;

	std::vector<T*> get() const;
};