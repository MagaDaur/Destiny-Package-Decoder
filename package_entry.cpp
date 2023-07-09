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

unsigned Entry::GetStartingBlockOffset() const
{
	return ((C >> 14) & 0b11111111111111) << 4;
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
	out << "\tRefID: " << std::uppercase << std::hex << entry.GetRefID() << std::endl;
	out << "\tPackage RefID: " << std::uppercase << std::hex << entry.GetPackageRefID() << std::endl;
	out << "\tStarting Block: " << std::dec << entry.GetStartingBlock() << std::endl;
	out << "\tStarting Block Offset: 0x" << std::uppercase << std::hex << entry.GetStartingBlockOffset() << std::endl;
	out << "\tFile Size: " << std::dec << entry.GetFileSize() << std::endl;
	out << "\tType: " << entry.GetType() << std::endl;
	out << "\tSubType: " << entry.GetSubType() << std::endl << std::endl;
	return out;
}