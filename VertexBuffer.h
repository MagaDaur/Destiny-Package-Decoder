#include "model_structs.h"

class VertexBuffer
{
public:
	VertexBuffer(const Entry&);
	~VertexBuffer();


private:
	unsigned char* buffer_raw_data;
	unsigned char* header_raw_data;

	__vertex_header* header;
};