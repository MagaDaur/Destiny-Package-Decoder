#include "package_block.h"

std::ostream& operator<<(std::ostream& out, const Block& block)
{
	return out;
}

PackageBlock::PackageBlock(FILE* package, const PackageHeader& header)
{
	block_table.resize(header.block_table_size);
}