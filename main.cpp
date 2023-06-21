#define _CRT_SECURE_NO_WARNINGS

#include <string>
#include <iostream>
#include <bitset>

#include "package_header.h"
#include "package_entry.h"

const char* package_folder_path = "C:\\Program Files (x86)\\Epic Games\\Destiny2\\packages\\";

int main()
{
	std::string package_name;
	std::cout << "Insert Package name: ";
	std::cin >> package_name;

	std::string package_path = package_folder_path + package_name;

	{
		FILE* package = fopen(package_path.c_str(), "rb");

		PackageHeader package_header(package);
		PackageEntry package_entry(package, package_header);

		std::cout << package_header;

		fclose(package);
	}

	return 0;
}