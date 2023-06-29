#define _CRT_SECURE_NO_WARNINGS

#include <string>
#include <iostream>
#include <bitset>

#include "package_header.h"
#include "package_entry.h"
#include "package_block.h"
#include "OodleDecompress.h"

const char* package_folder_path = "C:\\Program Files (x86)\\Epic Games\\Destiny2\\packages\\";

Oodle g_Oodle;

int main()
{
	std::string package_name;
	std::cout << "Insert Package name: ";
	std::cin >> package_name;

	std::string package_path = package_folder_path + package_name;

	{
		FILE* package = fopen(package_path.c_str(), "rb");
		if (!package)
		{
			std::cerr << "Invalid package path: " << package_path << std::endl;
			return 1;
		}

		PackageHeader package_header(package);

		PackageEntry package_entry(package, package_header);
		PackageBlock package_block(package, package_header);

		auto& entry_table = package_entry.Get();

		for (int i = entry_table.size() - 1; i >= 0; i--)
		{
			auto& entry = entry_table[i];
			package_block.ExtractEntryToFile(package_path, entry, std::to_string(entry.GetType()) + "_" + std::to_string(entry.GetSubType()) + "_" + std::to_string(i));
		}

		fclose(package);
	}

	return 0;
}