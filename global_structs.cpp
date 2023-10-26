#include "global_structs.h"
#include "package.h"

bool FileReference::valid()
{
	return (int)hash != -1 && hash;
}

int FileReference::get_package_id()
{
	return ((hash >> 13) & 0x3FF) + (((hash >> 23) & 0x3) - 1) * 0x400;
}

int FileReference::get_entry_id()
{
	return hash & 0x1FFF;
}

uint8_t* FileReference::get_data()
{
	if (!valid()) return nullptr;
	Package* package = Package::GetPackage(get_package_id());
	if (!package || get_entry_id() >= package->entry_table.size()) return nullptr;
	Entry entry = package->entry_table[get_entry_id()];

	uint8_t* buffer = new uint8_t[entry.GetFileSize()];
	if (!package->ExtractEntry(entry, buffer, true))
	{
		delete[] buffer;
		return nullptr;
	}

	return buffer;
}

bool FileReference64::valid()
{
	return (int)hash != -1 && hash;
}

int FileReference64::get_package_id()
{
	FileReference ref(Package::hash64_references[hash]);
	return ref.get_package_id();
}

int FileReference64::get_entry_id()
{
	FileReference ref(Package::hash64_references[hash]);
	return ref.get_entry_id();
}

uint8_t* FileReference64::get_data()
{
	if (!valid()) return nullptr;
	FileReference ref(Package::hash64_references[hash]);

	return ref.get_data();
}