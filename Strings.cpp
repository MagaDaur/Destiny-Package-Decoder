#include "Strings.h"
#include "structures.h"
#include "helpers.h"

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

bool is_ru_utf8(unsigned char* character)
{
	return (character[0] == 0xD0 && character[1] >= 0x90 && character[1] <= 0xBF) || (character[0] == 0xD1 && character[1] >= 0x80 && character[1] <= 0x8F);
}

bool StringProcessor::ExportTextToFolder(const std::vector<size_t>& string_table, const std::string& output_folder_path)
{
	auto& entry_table = g_pPackage->GetEntryTable();


	for (auto& entry_index : string_table)
	{
		auto& entry = entry_table[entry_index];
		const std::string file_name = helpers::entry_file_name(entry, entry_index);
		auto file_size = entry.GetFileSize();
		unsigned char* raw_data_buffer = new (unsigned char[file_size]);

		if (!g_pPackage->ExtractEntryToMemory(entry, raw_data_buffer))
		{
			delete[] raw_data_buffer;
			continue;
		}

		if (entry.GetType() == 8 && entry.GetSubType() == 0)
		{
			if (entry.A == 0x808099F1)
			{
				unsigned string_array_size = *(unsigned*)(raw_data_buffer + 0x50);
				unsigned string_array_offset = 0x68 + *(unsigned*)(raw_data_buffer + 0x68);
				unsigned seek_offset = 0x70;

				const std::string txt_file_path = output_folder_path + file_name + ".txt";

				FILE* output_file = fopen(txt_file_path.c_str(), "wb");

				bool has_ru = false;

				for (unsigned int i = 0; i < string_array_size; i++)
				{
					__c59d1c81* string_buffer_data = (__c59d1c81*)(raw_data_buffer + seek_offset);

					for (int j = 0; !has_ru && j < string_buffer_data->byte_size; j++)
					{
						if (is_ru_utf8(raw_data_buffer + string_array_offset + j))
						{
							has_ru = true;
							break;
						}
					}

					fwrite(raw_data_buffer + string_array_offset, 1, string_buffer_data->byte_size, output_file);
					fwrite(L"\n", 1, 1, output_file);

					string_array_offset = seek_offset + 0x18 + string_buffer_data->next_string_offset;
					seek_offset += sizeof(__c59d1c81);
				}

				fclose(output_file);

				if (!has_ru)
					DeleteFileA(txt_file_path.c_str());
			}
		}

		delete[] raw_data_buffer;
	}


	return true;
}