#include "OodleDecompress.h"
#include "package_header.h"

Oodle::Oodle()
{
	Oodle_Library = LoadLibraryA("oo2core_9_win64.dll");
	if(Oodle_Library)
		OodleLZ_Decompress = (OodleLZ_Decompress_t)GetProcAddress(Oodle_Library, "OodleLZ_Decompress");
}

bool Oodle::Decompress(const Block* block, unsigned char* compress_buffer, unsigned char* decompress_buffer)
{
	if (!OodleLZ_Decompress) return false;
	return OodleLZ_Decompress(compress_buffer, Block::MAX_SIZE, decompress_buffer, Block::MAX_SIZE, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);
}