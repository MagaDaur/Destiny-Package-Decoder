#include "package_entry.h"

unsigned short Entry::GetRefID() const
{
	return A & 0x1FFF;
}

unsigned short Entry::GetPackageRefID() const
{
	return (A >> 13) & 0x3FF;
}

unsigned short Entry::GetStartingBlock() const
{
	return C & 0x3FFF;
}

unsigned short Entry::GetStartingBlockOffset() const
{
	return ((C >> 14) & 0x3FFF) << 4;
}

unsigned Entry::GetFileSize() const
{
	return (D & 0x3FFFFFF) << 4 | (C >> 28) & 0xF;
}

unsigned short Entry::GetType() const
{
	return (B >> 9) & 0x7F;
}

unsigned short Entry::GetSubType() const
{
	return (B >> 6) & 0x7;
}

std::ostream& operator<<(std::ostream& out, const Entry& entry)
{
	out << "RefID: " << std::uppercase << std::hex << entry.GetRefID() << std::endl;
	out << "Package RefID: " << std::uppercase << std::hex << entry.GetPackageRefID() << std::endl;
	out << "Starting Block: " << std::dec << entry.GetStartingBlock() << std::endl;
	out << "Starting Block Offset: 0x" << std::uppercase << std::hex << entry.GetStartingBlockOffset() << std::endl;
	out << "File Size: " << std::dec << entry.GetFileSize() << std::endl;
	out << "Type: " << entry.GetType() << std::endl;
	out << "SubType: " << entry.GetSubType() << std::endl;
	return out;
}

PackageEntry::PackageEntry(FILE* package, const PackageHeader& header)
{
	entry_table.resize(header.entry_size);

	fseek(package, header.entry_table_offset, SEEK_SET);
	for (unsigned i = 0; i < header.entry_size; i++)
		fread(&entry_table[i], sizeof(Entry), 1, package);
}

std::vector<Entry>& PackageEntry::Get()
{
	return entry_table;
}

Entry& PackageEntry::operator[](int index)
{
	return entry_table[index];
}