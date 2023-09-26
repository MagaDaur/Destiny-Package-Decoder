#define _CRT_SECURE_NO_WARNINGS

#include "Strings.h"

#include "helpers.h"
#include "string_structs.h"

#include <Windows.h>

#include "package.h"

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

bool is_ru_char(unsigned char* character)
{
	return (character[0] == 0xD0 && character[1] >= 0x90 && character[1] <= 0xBF) || (character[0] == 0xD1 && character[1] >= 0x80 && character[1] <= 0x8F);
}

bool is_ru_string(unsigned char* str, uint64_t size)
{
	for (int j = 0; j < size; j++)
	{
		if (is_ru_char(str + j))
		{
			return true;
			break;
		}
	}
	return false;
}

bool StringProcessor::ExportTextToFolder(const std::vector<size_t>& string_table, const std::string& output_folder_path)
{
	auto& entry_table = g_pPackage->GetEntryTable();
	bool has_ru = false;

	for (auto& entry_index : string_table)
	{
		auto& entry = entry_table[entry_index];
		const std::string file_name = helpers::entry_file_name(entry, entry_index);
		auto file_size = entry.GetFileSize();
		unsigned char* raw_data_buffer = new (unsigned char[file_size]);


		if (!g_pPackage->ExtractEntry(entry, raw_data_buffer))
		{
			delete[] raw_data_buffer;
			continue;
		}

		if (entry.GetType() == 8 && entry.GetSubType() == 0)
		{
			if (entry.A == 0x808099F1)
			{
				Destiny_StringArray* header = (Destiny_StringArray*)raw_data_buffer;
				uint64_t seek = 0x10 + header->array_offset + sizeof(Struct_b89f8080);

				const std::string txt_file_path = output_folder_path + file_name + ".txt";

				FILE* output_file = fopen(txt_file_path.c_str(), "wb");

				has_ru = false;

				for (unsigned int i = 0; i < header->array_size; i++)
				{
					Destiny_StringData* string_data = (Destiny_StringData*)(raw_data_buffer + seek);
					unsigned char* string_buffer = raw_data_buffer + seek + 0x8 + string_data->string_offset;

					if (!has_ru && is_ru_string(string_buffer, string_data->byte_length))
						has_ru = true;

					fwrite(string_buffer, 1, string_data->byte_length, output_file);
					fwrite(L"\n", 1, 1, output_file);

					seek += sizeof(Destiny_StringData);
				}

				fclose(output_file);

				if (!has_ru)
					DeleteFileA(txt_file_path.c_str());
			}
		}

		delete[] raw_data_buffer;
	}


	return has_ru;
}