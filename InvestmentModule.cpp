#include "package.h"
#include "investment_structs.h"

#include <regex>
#include <Windows.h>

bool Package::InvestmentModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
	auto buffer = pkg->ExtractEntry<D2Class_9F548080>(entry);
	if (!buffer) return false;

	const static std::wregex reg(L"[\\/:*?\"<>|\n]");

	auto item_name = std::regex_replace(buffer->item_name.get_string(), reg, L"-");
	auto item_type = std::regex_replace(buffer->item_type.get_string(), reg, L"-");

	auto item_lore = buffer->flavorText.get_string();

	auto display_source = buffer->displaySource.get_string();

	//if (item_lore.size() == 0 || display_source.size() == 0) return false;

	if (item_name != L"Некробездна") return false;

	auto item_folder_path = output_folder_path + L"[ " + item_type + L" ] " + item_name + L"/";

	CreateDirectoryW(item_folder_path.c_str(), NULL);

	auto lore_file_path = item_folder_path + L"lore.txt";

	FILE* lore_file = _wfopen(lore_file_path.c_str(), L"w,ccs=UTF-8");

	fwrite(item_lore.data(), item_lore.size() * sizeof(wchar_t), 1, lore_file);

	fclose(lore_file);

	FILE* data_file = _wfopen((item_folder_path + L"data.bin").c_str(), L"wb");

	fwrite(buffer.get(), entry.file_size, 1, data_file);

	fclose(data_file);

	return true;
}

void Package::InvestmentModule::SetupIndexedStrings(const Entry& entry)
{
	if (pkg->GetCreationDate() < timestamp) return;
	timestamp = pkg->GetCreationDate();

	auto buffer = pkg->ExtractEntry<D2Class_095A8080>(entry, true);
	if (!buffer) return;

	auto string_container_array = buffer->string_container.get();

	indexed_strings.clear();
	indexed_strings.resize(string_container_array.size());
	for (int i = 0; i < string_container_array.size(); i++)
	{
		indexed_strings[i] = string_container_array[i]->strings;
	}
}