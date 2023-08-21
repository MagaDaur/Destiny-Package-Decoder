#pragma once

#include "model_structs.h"
#include "package.h"

class VertexBuffer
{
public:
	VertexBuffer(unsigned);
	~VertexBuffer();


private:
	unsigned char* buffer_raw_data;
	unsigned char* header_raw_data;

	__vertex_header* header;
};