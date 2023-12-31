#pragma once

#include <cstdint>
#include "memory.h"

class Package;

#include "filereference.h"
#include "package_header.h"
#include "package.h"

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

	Entry* get_entry() const
	{
		Package* pkg = get_package();
		if (!pkg) return nullptr;

		return pkg->GetEntry(get_entry_id());
	};

	Package* get_package() const
	{
		Package* temp = Package::GetPackage(get_package_id());
		if (!temp) return Package::GetPackage(get_package_id(), -1, 8);
		return temp;
	};

private:
	const uint32_t tag;
};

template<class T>
class FileReference64
{
public:
	FileReference64() : tag64(0) {};
	FileReference64(uint64_t tag64) : tag64(tag64) {};

	const FileReference<T> GetTag32() const
	{
		const HashContainer* container = Package::GetHashContainer(tag64);

		return FileReference<T>(container->tag32);
	};

	const uint64_t GetTag() const { return tag64; };

	un_block_ptr<T> get_data()
	{
		if (!tag64 || tag64 == 0xffffffff) return nullptr;
		return GetTag32().get_data();
	}

	uint64_t tag64;
};