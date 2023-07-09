#pragma once

#include "package_header.h"
#include <vector>

struct Entry
{
	unsigned A;
	unsigned B;
	unsigned C;
	unsigned D;

	unsigned short GetRefID() const;
	unsigned short GetPackageRefID() const;
	unsigned short GetStartingBlock() const;
	unsigned GetStartingBlockOffset() const;
	unsigned GetFileSize() const;
	unsigned short GetType() const;
	unsigned short GetSubType() const;

	friend std::ostream& operator<<(std::ostream&, const Entry&);
};