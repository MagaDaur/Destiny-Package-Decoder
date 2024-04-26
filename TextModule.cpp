#include "package.h"
#include "text_structs.h"

#include <iostream>

bool Package::TextModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
	if (entry.class_type == 0x808099EF)
	{
		auto string_container_info = pkg->ExtractEntry<D2Class_EF998080>(entry, force);
		if (!string_container_info) return false;

		auto string_container = string_container_info->string_container[12].get_data();

		auto string_hashes = string_container_info->string_hashes.get();
		auto string_buffer = string_container->strings.get();

		auto file_name = output_folder_path + entry.GenerateName() + L"_ru.txt";
		FILE* output = _wfopen(file_name.c_str(), L"wb,ccs=UTF-8");

		for (auto& string_info : string_buffer)
		{
			auto s = string_info->get_string();

			fwrite(s.c_str(), wcslen(s.c_str()) * sizeof(wchar_t), 1, output);
			fwrite(L"\n\n", 2 * sizeof(wchar_t), 1, output);
		}

		fclose(output);
	}
	else if (entry.class_type == 0x808099F1)
	{
		auto string_container = pkg->ExtractEntry<D2Class_F1998080>(entry, force);
		if (!string_container) return false;

		auto string_buffer = string_container->strings.get();

		auto file_name = output_folder_path + entry.GenerateName() + L".txt";
		FILE* output = _wfopen(file_name.c_str(), L"wb,ccs=UTF-8");

		for (auto& string_info : string_buffer)
		{
			auto s = string_info->get_string();

			fwrite(s.c_str(), wcslen(s.c_str()) * sizeof(wchar_t), 1, output);
			fwrite(L"\n\n", 2 * sizeof(wchar_t), 1, output);
		}

		fclose(output);
	}
	else if (entry.class_type == 0x80809EED)
	{
		auto path_container = pkg->ExtractEntry<D2Class_ED9E8080>(entry, force);
	}
	return true;
}

void Package::TextModule::SetupStringHashes(const Entry& entry)
{
	return; // Unused for now

	auto string_container_info = pkg->ExtractEntry<D2Class_EF998080>(entry, true);
	if (!string_container_info) return;

	auto string_container = string_container_info->string_container[12].get_data();
	if (!string_container) return;

	auto string_container_entry = string_container_info->string_container[12].get_entry();
	if (string_container_entry->class_type != 0x808099F1 || string_container_entry->file_size < string_container->filesize) return;

	auto string_hashes = string_container_info->string_hashes.get();
	auto string_parts = string_container->string_parts.get();
}