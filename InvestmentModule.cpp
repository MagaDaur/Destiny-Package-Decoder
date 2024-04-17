#include "package.h"
#include "investment_structs.h"

#include <filesystem>
#include <shlobj_core.h>
#include <Windows.h>

bool Package::InvestmentModule::Export(const Entry& entry, const std::string& output_folder_path, bool force)
{
	auto buffer = pkg->ExtractEntry<D2Class_9F548080>(entry);
	if (!buffer) return false;

	auto item_folder_path = output_folder_path + entry.GenerateName() + "/";

	CreateDirectoryA(item_folder_path.c_str(), NULL);

	auto item_name = buffer->item_name.get_string();

	if (item_name.size())
	{
		auto file_path = item_folder_path + "name.txt";

		FILE* file = fopen(file_path.c_str(), "w,ccs=UTF-8");

		fwrite(item_name.data(), item_name.size() * sizeof(wchar_t), 1, file);

		fclose(file);
	}
	auto item_type = buffer->item_type.get_string();

	if (item_type.size())
	{
		auto file_path = item_folder_path + "type.txt";

		FILE* file = fopen(file_path.c_str(), "w,ccs=UTF-8");

		fwrite(item_type.data(), item_type.size() * sizeof(wchar_t), 1, file);

		fclose(file);
	}

	auto item_lore = buffer->flavorText.get_string();
	if (item_lore.size())
	{
		auto file_path = item_folder_path + "lore.txt";

		FILE* file = fopen(file_path.c_str(), "w,ccs=UTF-8");

		fwrite(item_lore.data(), item_lore.size() * sizeof(wchar_t), 1, file);

		fclose(file);
	}

	std::vector<std::pair<Package*, Entry>> icons;

	auto ref_icon_container = GetIconContainerByIndex(buffer->icon_index);
	if (ref_icon_container)
	{
		auto icon_container = ref_icon_container->get_data();
		if (icon_container)
		{
			auto icon_info_array = icon_container->get_valid_icons();
			for (auto& ref_icon_info : icon_info_array)
			{
				auto icon_info = ref_icon_info->get_data();
				if (icon_info)
				{
					auto icon_texture_matrix = icon_info->ref_texture_matrix.get();
					auto texture_matrix = icon_texture_matrix->texture_matrix.get();
					for (auto& ref_texture_list : texture_matrix)
					{
						auto texture_list = ref_texture_list->texture_list.get();

						for (auto& ref_texture : texture_list)
						{
							auto texture = ref_texture->texture_ref;

							auto ref_pkg = texture.get_package();
							auto ref_entry = texture.get_entry();

							icons.push_back({ref_pkg, *ref_entry});
						}
					}
				}
			}
		}
	}

	for (auto& [pkg, entry] : icons)
		pkg->mTexture.Export(entry, item_folder_path, true);

	if (icons.size() > 0)
	{
		auto& [icon_pkg, icon_entry] = icons[0];
		icon_pkg->mTexture.Export(icon_entry, output_folder_path, true);
	}
	
	return true;
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