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

#include <d3d12.h>

namespace fs = std::filesystem;

Oodle* g_pOodle = nullptr;
Package* g_pPackage = nullptr;

const char* package_folder_path = "D:\\Epic Games\\Destiny2\\packages\\";
const char* output_folder_path = "D:/PackageDecoder/";

time_t get_file_mod_time(const fs::directory_entry& file)
{
	return std::chrono::system_clock::to_time_t(std::chrono::utc_clock::to_sys(std::chrono::file_clock::to_utc(fs::last_write_time(file))));
}

int main()
{
	int extraction_type = 0;
	std::cout << "Extraction type:\n\t1 - Single Package\n\t2 - All from newest\n\n--> "; std::cin >> extraction_type;

	std::vector<fs::directory_entry> file_paths;

	if (extraction_type == 1)
	{
		std::string package_file_name;
		std::cout << "Package file: "; std::cin >> package_file_name;
		file_paths.push_back(fs::directory_entry(package_folder_path + package_file_name));
	}
	else if (extraction_type == 2)
	{
		for (auto& p : fs::directory_iterator(package_folder_path))
			file_paths.push_back(p);

		std::sort(file_paths.begin(), file_paths.end(), [&](fs::directory_entry p1, fs::directory_entry p2)
			{
				FILE* p1_file = _wfopen(p1.path().c_str(), L"rb");
				FILE* p2_file = _wfopen(p2.path().c_str(), L"rb");

				PackageHeader p1_header(p1_file);
				PackageHeader p2_header(p2_file);

				fclose(p1_file);
				fclose(p2_file);

				return p1_header.unk > p2_header.unk;
			});
	}

	g_pOodle = new Oodle();

	for (auto& file : file_paths)
	{
		const std::wstring package_path_w = file.path();
		const std::string package_path(package_path_w.begin(), package_path_w.end());

		if (extraction_type == 2 && (package_path.find("sandbox") != std::string::npos || package_path.find("gear") != std::string::npos))
			continue;

		const size_t package_name_begin = package_path.find_last_of('\\') + 1;
		const size_t package_name_end = package_path.find_last_of('.');
		const std::string output_path = output_folder_path + package_path.substr(package_name_begin, package_name_end - package_name_begin) + "/";

		CreateDirectoryA(output_path.c_str(), NULL);

		FILE* package_file = fopen(package_path.c_str(), "rb");

		g_pPackage = new Package(package_file, package_path);

		g_pPackage->SetupDataTables();
		g_pPackage->ExportDataTables(output_path);

		fclose(package_file);
		delete g_pPackage;
	}


	delete g_pOodle;

	return 0;
}