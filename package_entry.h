#pragma once

#include "package_header.h"
#include <vector>

struct Entry
{
	unsigned A;
	unsigned B;
	unsigned C;
	unsigned D;

	unsigned GetRefID() const;
	unsigned GetPackageRefID() const;
	unsigned GetStartingBlock() const;
	unsigned GetStartingBlockOffset() const;
	unsigned GetFileSize() const;
	unsigned GetType() const;
	unsigned GetSubType() const;

	friend std::ostream& operator<<(std::ostream&, const Entry&);
};

class PackageEntry
{
public:
	PackageEntry(FILE*, const PackageHeader&);

	std::vector<Entry> entry_table;
};