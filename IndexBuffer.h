#pragma once

#include "model_structs.h"
#include "package.h"

class IndexBuffer
{
public:
	IndexBuffer(const Entry&);
	~IndexBuffer();

	std::vector<VectorInt3> Get(unsigned, int, int);
private:
	unsigned char* buffer_raw_data;
	unsigned char* header_raw_data;

	__index_header* header;
};