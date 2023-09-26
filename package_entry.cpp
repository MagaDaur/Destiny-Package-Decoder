#include "package_entry.h"

unsigned short Entry::GetEntryRefID() const
{
	return A & 0x1FFF;
}

unsigned int Entry::GetPackageRefID() const
{
	return (A >> 13) & 0x3FF + ((A >> 23) & 0x3 - 1) * 0x400;
}

unsigned short Entry::GetStartingBlock() const
{
	return C & 0x3FFF;
}

unsigned Entry::GetStartingBlockOffset() const
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