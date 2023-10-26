#define _CRT_SECURE_NO_WARNINGS

#include "Strings.h"

#include "helpers.h"
#include "string_structs.h"

#include <Windows.h>

#include "package.h"
#include <iostream>

bool StringProcessor::ExportTextToFolder(const std::vector<size_t>& string_table, const std::string& output_folder_path, bool force)
{
	auto& entry_table = g_pPackage->GetEntryTable();

	for (auto& entry_index : string_table)
	{
		auto& entry = entry_table[entry_index];
		const std::string file_name = output_folder_path + helpers::entry_file_name(entry, entry_index) + ".txt";
		auto file_size = entry.GetFileSize();
		uint8_t* raw_data_buffer = new uint8_t[file_size];


		if (!g_pPackage->ExtractEntry(entry, raw_data_buffer, force))
		{
			delete[] raw_data_buffer;
			continue;
		}

		FILE* text_file = fopen(file_name.c_str(), "wb");

		if (entry.A == 0x808099ef)
		{
			D2Class_EF998080* string_data = (D2Class_EF998080*)raw_data_buffer;

			D2Class_F1998080* string_container_ru = (D2Class_F1998080*)string_data->string_container[12].get_data();

			auto string_hashes = string_data->string_hashes.get();
			auto string_bytes = string_container_ru->strings.get();

			if (string_hashes.size() == string_bytes.size())
			{
				for (int i = 0; i < string_bytes.size(); i++)
				{
					fwrite(string_bytes[i]->get_string(), 1, string_bytes[i]->byte_length, text_file);
					fwrite("\n", 1, 1, text_file);
				}
			}



			delete[](uint8_t*)string_container_ru;
		}

		else if (entry.A == 0x808099f1)
		{
			D2Class_F1998080* string_container = (D2Class_F1998080*)raw_data_buffer;

			auto string_bytes = string_container->strings.get();

			for (auto* string_data : string_bytes)
			{
				fwrite(string_data->get_string(), 1, string_data->byte_length, text_file);
				fwrite("\n", 1, 1, text_file);
			}
		}

		else if (entry.A == 0x80809eed)
		{
			D2Class_ED9E8080* path_data = (D2Class_ED9E8080*)raw_data_buffer;
			auto paths = path_data->paths.get();

			for (auto* path_data : paths)
			{
				auto* path = path_data->get_string();
				fwrite(path, 1, strlen(path), text_file);
				fwrite("\n", 1, 1, text_file);
			}
		}

		fclose(text_file);
		delete[] raw_data_buffer;
	}


	return true;
}