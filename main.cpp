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
		Package package(p.path().generic_string());

		uint32_t package_hash = package.header.package_id | (package.header.patch_id << 20);

		Package::package_table[package_hash] = package;
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

		if (package.package_path.find("sandbox") != std::string::npos || package.package_path.find("gear") != std::string::npos)
			continue;

		std::tm* now = std::localtime(&package.header.timestamp);
		const std::string package_date = "[ " + std::to_string(now->tm_mday) + "." + std::to_string(now->tm_mon + 1) + "." + std::to_string(now->tm_year + 1900) + " ] ";

		const size_t package_name_begin = package.package_path.find_last_of('/') + 1;
		const size_t package_name_end = package.package_path.find_last_of('.');
		const std::string output_path = output_folder_path + package_date + package.package_path.substr(package_name_begin, package_name_end - package_name_begin) + "/";

		CreateDirectoryA(output_path.c_str(), NULL);

		package.SetupDataTables();
		package.ExportDataTables(output_path);
	}

	delete g_pOodle;

	return 0;
}