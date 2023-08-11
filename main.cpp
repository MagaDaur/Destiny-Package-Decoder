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

const char* package_folder_path = "C:\\Program Files (x86)\\Epic Games\\Destiny2\\packages\\";

int main()
{
	std::string package_name;
	std::cout << "Package name: "; std::cin >> package_name;

	const std::string package_path = (package_folder_path + package_name);
	const size_t package_name_begin = package_path.find_last_of('\\') + 1;
	const size_t package_name_end = package_path.find_last_of('.');
	const std::string output_folder_path = "output/" + package_path.substr(package_name_begin, package_name_end - package_name_begin) + "/";

	CreateDirectoryA(output_folder_path.c_str(), NULL);

	FILE* package_file = fopen(package_path.c_str(), "rb");

	g_pPackage = new Package(package_file, package_path);
	g_pOodle = new Oodle();

	g_pPackage->SetupDataTables();
	g_pPackage->ExportDataTables(output_folder_path);

	fclose(package_file);
	delete g_pPackage;
	delete g_pOodle;

	return 0;
}