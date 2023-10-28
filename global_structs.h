#pragma once

#include <stdint.h>
#include <vector>
#include <memory>

class Package;
struct HashContainer;

template <class T>
struct Deleter
{
	void operator()(T* p) const {
		delete[] reinterpret_cast<uint8_t*>(p);
	}
};

template<class T>
using un_block_ptr = std::unique_ptr<T, Deleter<T>>;

template<class T>
class FileReference
{
public:
	FileReference(uint32_t tag) : tag(tag) {};

	bool valid() const { return (tag && tag != 0xffffffff); };

	int get_package_id() const { return ((tag >> 13) & 0x3FF) + (((tag >> 23) & 0x3) - 1) * 0x400; };

	int get_entry_id() const { return tag & 0x1FFF; };

	un_block_ptr<T> get_data() const
	{
		auto buffer = Package::ExtractEntry(*this, true);

		return un_block_ptr<T>(reinterpret_cast<T*>(buffer.release()));
	};

private:
	uint32_t tag;
};

template<class T>
class FileReference64
{
public:
	const FileReference<T> GetTag32() const
	{
		const HashContainer* container = Package::GetHashContainer(GetTag());

		return FileReference<T>(container->tag32);
	};

	const uint64_t GetTag() const { return tag64; };

	un_block_ptr<T> get_data()
	{
		return GetTag32().get_data();
	}
private:
	uint64_t tag64;
};

template<class T>
struct D2_Array
{
	uint64_t size;
	uint64_t offset;

	std::vector<T*> get() const
	{
		std::vector<T*> ret{};
		uint64_t base_addr = uint64_t(this) + offset + 0x18;
		uint64_t struct_size = sizeof(T);
		for (int i = 0; i < size; i++)
			ret.push_back((T*)(base_addr + struct_size * i));
		return ret;
	}
};