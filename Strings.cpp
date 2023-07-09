#include "Strings.h"
#include "structures.h"

uintptr_t get_offset(void* from, void* to)
{
	return uintptr_t(to) - uintptr_t(from);
}

template <class T> T* read_struct(void* base, unsigned long long* offset, unsigned& seek)
{
	seek += sizeof(T);
	return (T*)((char*)base + get_offset(base, offset) + *offset);
}

template <class T> T* read_struct(void* base, unsigned& seek)
{
	T* ret = (T*)((char*)base + seek);
	seek += sizeof(T);
	return ret;
}

bool StringProcessor::ExportStringsToFile(unsigned char* buffer, const std::wstring& output_file_path)
{

	unsigned string_array_size = *(unsigned*)(buffer + 0x50);
	unsigned string_array_offset = 0x68 + *(unsigned*)(buffer + 0x68);
	unsigned seek_offset = 0x70;

	unsigned char* first_utf8_char = buffer + string_array_offset;
	if ((first_utf8_char[0] != 0xD0 || first_utf8_char[1] < 0x90 || first_utf8_char[1] > 0xBF) &&
		(first_utf8_char[0] != 0xD1 || first_utf8_char[1] < 0x80 || first_utf8_char[1] > 0x8F))
		return false;

	FILE* output_file = _wfopen(output_file_path.c_str(), L"wb");

	for (unsigned int i = 0; i < string_array_size; i++)
	{
		__c59d1c81* string_buffer_data = (__c59d1c81*)(buffer + seek_offset);

		fwrite(buffer + string_array_offset, 1, string_buffer_data->byte_size, output_file);
		fwrite(L"\n", 1, 1, output_file);

		string_array_offset = seek_offset + 0x18 + string_buffer_data->next_string_offset;
		seek_offset += sizeof(__c59d1c81);
	}

	fclose(output_file);
	return true;
}