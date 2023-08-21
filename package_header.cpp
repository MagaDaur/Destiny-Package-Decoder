#include "package_header.h"

std::ostream& operator<<(std::ostream& out, const PackageHeader& pkg)
{
	out << "Package ID: " << std::uppercase << std::hex << pkg.package_id << std::endl;
	out << "Patch ID: " << std::dec << pkg.patch_id << std::endl;
	out << "Entry Table Offset: 0x" << std::uppercase << std::hex << pkg.entry_table_offset << std::endl;
	out << "Entry Table Size: " << std::dec << pkg.entry_size << std::endl;
	out << "Block Table Offset: 0x" << std::uppercase << std::hex << pkg.block_table_offset << std::endl;
	out << "Block Table Size: " << std::dec << pkg.block_table_size << std::endl;
	return out;
}
 
PackageHeader::PackageHeader(FILE* package)
{
	fseek(package, 0, SEEK_SET);
	fread(raw_data, sizeof(char), package_header_size, package);

	package_id = *(unsigned short*)&raw_data[0x10];
	unk = *(unsigned int*)&raw_data[0x28];
	patch_id = *(unsigned short*)&raw_data[0x30];

	entry_table_offset = *(unsigned int*)&raw_data[0x44];
	entry_size = *(unsigned int*)&raw_data[0x60];

	block_table_size = *(unsigned int*)&raw_data[0x68];
	block_table_offset = *(unsigned int*)&raw_data[0x6C];
}