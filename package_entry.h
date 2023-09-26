#pragma once

struct Entry
{
	unsigned A;
	unsigned B;
	unsigned C;
	unsigned D;

	unsigned short GetEntryRefID() const;
	unsigned int GetPackageRefID() const;
	unsigned short GetStartingBlock() const;
	unsigned GetStartingBlockOffset() const;
	unsigned GetFileSize() const;
	unsigned short GetType() const;
	unsigned short GetSubType() const;
};