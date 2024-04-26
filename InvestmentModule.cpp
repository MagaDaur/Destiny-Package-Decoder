#include "package.h"
#include "investment_structs.h"

#include <filesystem>
#include <shlobj_core.h>
#include <Windows.h>

#include <regex>

#undef min

bool Package::InvestmentModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
	const static std::wregex reg(L"[\\/:*?\"<>|\n]");

	auto buffer = pkg->ExtractEntry<D2Class_9D798080>(entry, force);
	if (!buffer) return false;

	auto display_data_ref = GetItemContainerByHash(buffer->api_hash);
	if (!display_data_ref) return false;

	auto display_data_buffer = display_data_ref->get_data();
	if (!display_data_buffer) return false;

	auto item_name = display_data_buffer->item_name.get_string();
	auto item_type = display_data_buffer->item_type.get_string();
	auto item_flavor = display_data_buffer->flavorText.get_string();
	auto item_source = display_data_buffer->displaySource.get_string();
	auto description = display_data_buffer->completeText.get_string();
	auto quest_info = display_data_buffer->quest_info.get();

	auto item_folder_path = output_folder_path + entry.GenerateName() + L"/";
	if (item_name.size())
		item_folder_path = output_folder_path + L"[ " + std::regex_replace(item_type, reg, L"-") + L" ] " + std::regex_replace(item_name, reg, L"-") + L"/";

	CreateDirectoryW(item_folder_path.c_str(), NULL);

	auto primary_icons = get_valid_icons(display_data_buffer->icon_index);
	auto secondary_icons = get_valid_icons(display_data_buffer->secondary_icon_index);

	for (auto& [pkg, entry] : primary_icons)
		pkg->mTexture.Export(entry, item_folder_path, true);

	for (auto& [pkg, entry] : secondary_icons)
		pkg->mTexture.Export(entry, item_folder_path, true);

	auto file_path = item_folder_path + L"info.txt";
	FILE* file = _wfopen(file_path.c_str(), L"w,ccs=UTF-8");

	if (item_name.size())
	{
		item_name = L"Name: " + item_name + L"\n\n";
		fwrite(item_name.data(), item_name.size() * sizeof(wchar_t), 1, file);
	}
	
	if (item_type.size())
	{
		item_type = L"Type: " + item_type + L"\n\n";
		fwrite(item_type.data(), item_type.size() * sizeof(wchar_t), 1, file);
	}
	
	if (item_flavor.size())
	{
		item_flavor = L"Flavor: " + item_flavor + L"\n\n";
		fwrite(item_flavor.data(), item_flavor.size() * sizeof(wchar_t), 1, file);
	}
	
	if (item_source.size())
	{
		item_source = L"Source: " + item_source + L"\n\n";
		fwrite(item_source.data(), item_source.size() * sizeof(wchar_t), 1, file);
	}
	
	if (description.size())
	{
		description = L"Description : " + description + L"\n\n";
		fwrite(description.data(), description.size() * sizeof(wchar_t), 1, file);
	}
	
	if (quest_info)
	{
		auto quest_name = quest_info->quest_name.get_string();
		if (quest_name.size())
		{
			quest_name = L"Quest name: " + quest_name + L"\n\n";
			fwrite(quest_name.data(), quest_name.size() * sizeof(wchar_t), 1, file);
		}

		auto quest_step = quest_info->quest_step.get_string();
		if (quest_step.size())
		{
			quest_step = L"Quest step: " + quest_step + L"\n\n";
			fwrite(quest_step.data(), quest_step.size() * sizeof(wchar_t), 1, file);
		}

		auto quest_vendor = quest_info->quest_vendor_line.get_string();
		if (quest_vendor.size())
		{
			quest_vendor = L"Quest vendor line: " + quest_vendor + L"\n\n";
			fwrite(quest_vendor.data(), quest_vendor.size() * sizeof(wchar_t), 1, file);
		}
	}

	fclose(file);

	return true;
}

std::vector<std::pair<Package*, Entry>> get_valid_icons(uint16_t icon_index)
{
	auto ref_icon_container = Package::InvestmentModule::GetIconContainerByIndex(icon_index);
	if (!ref_icon_container) return {};

	auto icon_container = ref_icon_container->get_data();
	if (!icon_container) return {};

	std::vector<std::pair<Package*, Entry>> icons;

	auto icon_info_array = icon_container->get_valid_icons();
	for (auto& ref_icon_info : icon_info_array)
	{
		auto icon_info = ref_icon_info->get_data();
		if (!icon_info) continue;

		auto icon_texture_matrix = icon_info->ref_texture_matrix.get();
		if (!icon_texture_matrix) continue;

		auto texture_matrix = icon_texture_matrix->texture_matrix.get();

		for (auto& ref_texture_list : texture_matrix)
		{
			auto texture_list = ref_texture_list->texture_list.get();

			for (auto& ref_texture : texture_list)
			{
				auto texture = ref_texture->texture_ref;

				auto ref_pkg = texture.get_package();
				auto ref_entry = texture.get_entry();

				icons.push_back({ ref_pkg, *ref_entry });
			}
		}
	}

	return icons;
}

void Package::InvestmentModule::SetupIndexedStrings(const Entry& entry)
{
	static time_t timestamp = 1698924679;

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

void Package::InvestmentModule::SetupIndexedIcons(const Entry& entry)
{
	static time_t timestamp = 1698924679;

	if (pkg->GetCreationDate() < timestamp) return;
	timestamp = pkg->GetCreationDate();

	auto buffer = pkg->ExtractEntry<D2Class_015A8080>(entry, true);
	if (!buffer) return;

	auto icon_container_array = buffer->icon_ref_container.get();

	indexed_icons.clear();
	indexed_icons.resize(icon_container_array.size());

	for (int i = 0; i < icon_container_array.size(); i++)
	{
		indexed_icons[i] = icon_container_array[i]->icon_container;
	}
}

void Package::InvestmentModule::SetupIndexedItems(const Entry& entry)
{
	static std::unordered_map<uint32_t, FileReference<D2Class_9F548080>> cur_items;
	static std::unordered_map<uint32_t, FileReference<D2Class_9F548080>> prev_items;

	auto buffer = pkg->ExtractEntry<D2Class_99548080>(entry, true);
	if (!buffer) return;

	auto item_array = buffer->items.get();

	prev_items = cur_items;
	cur_items.clear();

	for (const auto& item : item_array)
		cur_items.insert({ item->api_hash, item->item_string_data });

	if (cur_items.size() == prev_items.size()) return;

	indexed_items.clear();

	for (const auto& [hash, ref] : cur_items)
		if (prev_items.find(hash) == prev_items.end())
			indexed_items.insert({ hash, ref });
}

std::wstring D2_StrIndexRef::get_string()
{
	if (hash == 0x811c9dc5) return L"";

	auto container_ref = Package::InvestmentModule::GetStringContainerByIndex(container_index);
	if (!container_ref)
		return L"";

	auto container_buffer = container_ref->get_data();
	if (!container_buffer)
		return L"";

	auto string_container = container_buffer->string_container[12].get_data();
	if (!string_container)
		return L"";

	auto string_parts = string_container->string_parts.get();
	auto string_hashes = container_buffer->string_hashes.get();

	for (int i = 0; i < string_hashes.size(); i++)
	{
		if (string_hashes[i]->string_hash == hash)
		{
			return string_parts[i]->get_string();
		}
	}

	return L"";
};