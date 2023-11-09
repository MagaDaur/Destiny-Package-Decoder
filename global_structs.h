#pragma once

#include <stdint.h>
#include <vector>
#include <memory>
#include <iostream>
#include <sstream>

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

	uint16_t get_package_id() const { return ((tag >> 13) & 0x3FF) + (((tag >> 23) & 0x3) - 1) * 0x400; };

	uint16_t get_entry_id() const { return tag & 0x1FFF; };

	un_block_ptr<T> get_data() const
	{
		if (!tag || tag == 0xffffffff) return nullptr;
		return Package::ExtractEntry<T>(*this, true);
	};

	Entry* get_entry()
	{
		Package* pkg = get_package();
		if (!pkg) return nullptr;

		return pkg->GetEntry(get_entry_id());
	}

	Package* get_package()
	{
		Package* temp = Package::GetPackage(get_package_id());
		if (!temp) return Package::GetPackage(get_package_id(), -1, 8);
	}

private:
	const uint32_t tag;
};

template<class T>
class FileReference64
{
public:
	FileReference64(uint64_t tag64) : tag64(tag64) {};

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
	const uint64_t tag64;
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

struct D2_StrIndexRef
{
	uint32_t container_index;
	uint32_t hash;

	std::u8string get_string()
	{
		auto container_ref = Package::TextModule::indexed_investment_strings[container_index];
		auto conainer_hashes = container_ref->string_hashes.get();

		auto found = std::find(conainer_hashes.begin(), container_hashes.end(), hash);
		if(found == conainer_hashes.end()) return u"unknown string";

		auto string_container = container_ref->string_container[12].get_data();
		auto string_vector = string_container->strings.get();

		return "todo";
	}
};

template <class T>
struct D2_RelativeOffset
{
	uint64_t offset;

	T* get() { return (T*)(uint64_t(this) + offset); }
};

namespace Helpers
{
	std::string to_hex(uint64_t);
	std::wstring to_wstring(std::string);
}