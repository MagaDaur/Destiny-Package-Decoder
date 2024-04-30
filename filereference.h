#ifndef FILEREFERENCE_H
#define FILEREFERENCE_H

#include <cstdint>
#include "memory.h"

class Package;
struct Entry;
struct HashContainer;

template<class T>
class FileReference
{
public:
	FileReference() : tag(0) {};
	FileReference(uint32_t tag) : tag(tag) {};

	bool valid() const { return tag && tag != 0xffffffff; };

	uint16_t get_package_id() const { return ((tag >> 13) & 0x3FF) + (((tag >> 23) & 0x3) - 1) * 0x400; };

	uint16_t get_entry_id() const { return tag & 0x1FFF; };

	un_block_ptr<T> get_data() const
	{
		if (!valid()) return nullptr;
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

	bool ExportBinary(const std::wstring& output_folder_path) const
	{
		Package* pkg = get_package();
		if (!pkg) return false;

		return pkg->mBinary.Export(*get_entry(), output_folder_path, true);
	}

	uint32_t tag;
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
		if (!tag64 || tag64 == -1) return nullptr;
		return GetTag32().get_data();
	}

	uint64_t tag64;
};

#endif