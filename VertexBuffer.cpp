/*#include "VertexBuffer.h"

VertexBuffer::VertexBuffer(unsigned header_hash)
{
	auto& entry_table = g_pPackage->GetEntryTable();

	Entry header_entry;

	header_raw_data = new (unsigned char[header_entry.GetFileSize()]);
	g_pPackage->ExtractEntry(header_entry, header_raw_data);

	header = (__vertex_header*)header_raw_data;

	auto& buffer_entry = entry_table[header_entry.GetEntryRefID()];

	buffer_raw_data = new (unsigned char[buffer_entry.GetFileSize()]);
	g_pPackage->ExtractEntry(buffer_entry, buffer_raw_data);
}

VertexBuffer::~VertexBuffer()
{
	delete[] header_raw_data;
	delete[] buffer_raw_data;

	header_raw_data = nullptr;
	buffer_raw_data = nullptr;
	header = nullptr;
}*/