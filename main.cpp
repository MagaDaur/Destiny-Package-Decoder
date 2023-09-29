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

const std::string package_folder_path = "D:\\Epic Games\\Destiny2\\packages\\";
const std::string output_folder_path = "D:/PackageDecoder/";

int main()
{
	std::vector<std::pair<uint32_t, time_t>> v_packages{};

	for (auto& p : fs::directory_iterator(package_folder_path))
	{
		const std::string package_path = p.path().generic_string();

		if (package_path.find("_en_")  != std::string::npos   ||
			package_path.find("_sp_")  != std::string::npos   ||
			package_path.find("_po_")  != std::string::npos   ||
			package_path.find("_pt_")  != std::string::npos   ||
			package_path.find("_ko_")  != std::string::npos   ||
			package_path.find("_mx_")  != std::string::npos   ||
			package_path.find("_jpn_") != std::string::npos   ||
			package_path.find("_fr_")  != std::string::npos   ||
			package_path.find("_it_")  != std::string::npos   ||
			package_path.find("_de_")  != std::string::npos   ||
			package_path.find("_cs_")  != std::string::npos   ||
			package_path.find("sandbox") != std::string::npos ||
			package_path.find("gear") != std::string::npos) continue;

		Package package(package_path);
		std::tm* now = std::localtime(&package.header.timestamp);
		if (now->tm_mday != 9 || now->tm_mon != 7) continue;

		uint32_t package_hash = package.header.package_id | (package.header.patch_id << 20);

		Package::package_table[package_hash] = package;
		Package::lastest_package_patches[package.header.package_id] = max(Package::lastest_package_patches[package.header.package_id], package.header.patch_id);

		v_packages.push_back(std::pair<uint32_t, time_t>(package_hash, package.header.timestamp));
	}

	std::sort(v_packages.begin(), v_packages.end(), [](std::pair<uint32_t, time_t> const& a, std::pair<uint32_t, time_t> const& b)
		{
			return a.second > b.second;
		});

	g_pOodle = new Oodle();

	for (auto const& pkg_data : v_packages)
	{
		auto& package = Package::package_table[pkg_data.first];
		g_pPackage = &package;

		std::tm* now = std::localtime(&package.header.timestamp);
		const std::string package_date = "[ " + std::to_string(now->tm_mday) + "." + std::to_string(now->tm_mon + 1) + "." + std::to_string(now->tm_year + 1900) + " ] ";

		const size_t package_name_begin = package.package_path.find_last_of('/') + 1;
		const size_t package_name_end = package.package_path.find_last_of('.');
		const std::string package_name = package.package_path.substr(package_name_begin, package_name_end - package_name_begin);
		const std::string output_path = output_folder_path + package_date + package_name + "/";

		CreateDirectoryA(output_path.c_str(), NULL);

		package.SetupDataTables();
		if (package.ExportDataTables(output_path))
		{
			std::cout << package_name << " has been exported!" << std::endl;
		}


	}

	delete g_pOodle;

	return 0;
}