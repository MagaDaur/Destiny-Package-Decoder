#include "package.h"

#include <string>
#include <iostream>
#include <bitset>
#include <chrono>
#include <filesystem>
#include <vector>

#include "helpers.h"
#include "package_header.h"
#include "package_entry.h"
#include "package_block.h"
#include "OodleDecompress.h"

namespace fs = std::filesystem;

Oodle* g_pOodle = nullptr;
Package* g_pPackage = nullptr;

const char* package_folder_path = "C:\\Program Files (x86)\\Epic Games\\Destiny2\\packages\\";

time_t get_file_mod_time(const fs::directory_entry& file)
{
	return std::chrono::system_clock::to_time_t(std::chrono::utc_clock::to_sys(std::chrono::file_clock::to_utc(fs::last_write_time(file))));
}

std::string get_patch_folder(const fs::directory_entry& file, time_t& current_date)
{
	time_t file_mod_date = get_file_mod_time(file);
	if (abs(file_mod_date - current_date) > 3600)
		return std::to_string(file_mod_date) + '/';
	return std::to_string(current_date) + '/';
}

int main()
{

	int mode = 0;
	int patch_count = 0;
	int wanted_patch_index = 0;
	std::string package_name;
	std::vector<fs::directory_entry> vec_files;

	std::cout << "Modes:" << std::endl;
	std::cout << " 1 - Export from sigle file. ( package_file_name )" << std::endl;
	std::cout << " 2 - Export from N latest patches. ( 1 to N )" << std::endl;
	std::cout << " 3 - Export from N-th patch from last. ( 1 - latest, or 2, or 3, or ... or N )" << std::endl;
	std::cout << "Mode: ";  std::cin >> mode;

	if (mode == 1)
	{
		std::cout << "Package name: "; std::cin >> package_name;
		vec_files.push_back(fs::directory_entry(package_folder_path + package_name));
	}
	else if (mode == 2 || mode == 3)
	{
		for (auto& file : fs::directory_iterator(package_folder_path))
			vec_files.push_back(file);

		std::sort(vec_files.begin(), vec_files.end(), [](fs::directory_entry f1, fs::directory_entry f2)
			{
				return get_file_mod_time(f2) < get_file_mod_time(f1);
			});

		time_t last_patch_time = get_file_mod_time(vec_files[0]);

		if (mode == 2)
		{
			std::cout << "Number of latest patches: "; std::cin >> patch_count;
			if (!patch_count) return 0;

			for (size_t i = 1; i < vec_files.size(); i++)
			{
				time_t file_patch_time = get_file_mod_time(vec_files[i]);
				if (abs(last_patch_time - file_patch_time) > 3600) {
					patch_count--;
					last_patch_time = file_patch_time;
				}
				if (patch_count <= 0) vec_files.erase(vec_files.begin() + i--);
			}
		}
		else if (mode == 3)
		{
			patch_count = 1;
			std::cout << "Patch number from the latest: "; std::cin >> wanted_patch_index;
			
			for (size_t i = 0; i < vec_files.size(); i++)
			{
				time_t file_patch_time = get_file_mod_time(vec_files[i]);
				if (abs(last_patch_time - file_patch_time) > 3600) {
					patch_count++;
					last_patch_time = file_patch_time;
				}
				if (patch_count != wanted_patch_index)
					vec_files.erase(vec_files.begin() + i--);
			}
		}
		else return 0;
	}
	else return 0;

	time_t last_patch_time = get_file_mod_time(vec_files[0]);

	for(auto& file : vec_files)
	{
		const std::string package_path = file.path().string();
		FILE* package_file = fopen(package_path.c_str(), "rb");

		PackageHeader package_header(package_file);
		g_pPackage = new Package(package_file, package_header);
		g_pOodle = new Oodle();

		auto& entry_table = g_pPackage->GetEntryTable();

		for (size_t i = 0; i < entry_table.size(); i++)
			g_pPackage->ExtractEntryToFile(i, package_path, get_patch_folder(file, last_patch_time));

		fclose(package_file);
		delete g_pPackage;
		delete g_pOodle;
	}

	return 0;
}