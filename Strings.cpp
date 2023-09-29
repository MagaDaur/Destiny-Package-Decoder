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
				const std::string txt_file_path = output_folder_path + file_name + ".txt";
				FILE* output_file = fopen(txt_file_path.c_str(), "wb");

				has_ru = false;
				Destiny_StringHeader* header = (Destiny_StringHeader*)raw_data_buffer;

				for (const auto& string_data : header->strings.get())
				{
					uint8_t* buffer = string_data->get_string();

					if (!has_ru && is_ru_string(buffer, string_data->byte_length))
						has_ru = true;

					fwrite(buffer, 1, string_data->byte_length, output_file);
					fwrite(L"\n", 1, 1, output_file);
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