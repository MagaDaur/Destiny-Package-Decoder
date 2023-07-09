#pragma once

#include <Windows.h>
#include <stdint.h>

typedef int64_t(*OodleLZ_Decompress_t)(unsigned char*, int64_t, unsigned char*, int64_t, int, int, int, int64_t, int64_t, void*, int64_t, int64_t, int64_t, int);

struct Block;

class Oodle
{
public:
	Oodle();

	bool Decompress(const Block*, unsigned char*, unsigned char*);
private:
	HMODULE Oodle_Library = NULL;
	OodleLZ_Decompress_t OodleLZ_Decompress = NULL;
};

extern Oodle* g_pOodle;