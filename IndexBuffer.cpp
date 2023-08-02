#include "IndexBuffer.h"
#include "package.h"

IndexBuffer::IndexBuffer(const Entry& header_entry)
{
	auto& entry_table = g_pPackage->GetEntryTable();

	header_raw_data = new (unsigned char[header_entry.GetFileSize()]);
	g_pPackage->ExtractEntryToMemory(header_entry, header_raw_data);

	header = (__index_header*)header_raw_data;

	auto& buffer_entry = entry_table[header_entry.GetRefID()];

	buffer_raw_data = new (unsigned char[buffer_entry.GetFileSize()]);
	g_pPackage->ExtractEntryToMemory(buffer_entry, buffer_raw_data);
}

std::vector<VectorInt3> IndexBuffer::Get(unsigned offset, int count, int type)
{
	unsigned stride = (header->is_uint32) ? 4 : 2;

	unsigned char* raw_data_offset = buffer_raw_data + stride * offset;
	unsigned vertex_count = 0;

	std::vector<VectorInt3> ret;

	for (int i = 0; i < count;)
	{
		int x = 0, y = 0, z = 0;

		memcpy(&x, raw_data_offset + stride * i, stride);
		memcpy(&y, raw_data_offset + stride * (i + 1), stride);
		memcpy(&z, raw_data_offset + stride * (i + 2), stride);

		if (x == 0xFFFF || x == 0xFFFFFFFF)
		{
			vertex_count = 0;
			i++;
			continue;
		}

		if (y == 0xFFFF || y == 0xFFFFFFFF)
		{
			vertex_count = 0;
			i += 2;
			continue;
		}

		if (z == 0xFFFF || z == 0xFFFFFFFF)
		{
			vertex_count = 0;
			i += 3;
			continue;
		}

		if (type == 3)
		{
			ret.push_back(VectorInt3(x, y, z));
			i += 3;
		}
		else if (type == 5)
		{
			if (vertex_count % 2 == 0)
				ret.push_back(VectorInt3(x, y, z));
			else
				ret.push_back(VectorInt3(y, z, x));

			vertex_count++;
			i++;
		}
	}

	return ret;
}

IndexBuffer::~IndexBuffer()
{
	delete[] header_raw_data;
	delete[] buffer_raw_data;

	header_raw_data = nullptr;
	buffer_raw_data = nullptr;
	header = nullptr;
}