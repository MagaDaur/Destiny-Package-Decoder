#include "package.h"
#include "OodleDecompress.h"
#include <filesystem>
#include <memory>
#include <iostream>
#include "text_structs.h"

namespace fs = std::filesystem;

Oodle* g_pOodle = nullptr;

const std::string package_folder_path = "D:\\Epic Games\\Destiny2\\packages\\";
const std::string output_folder_path = "D:/PackageDecoder/";

using hash_time_pair = std::pair<uint64_t, time_t>;

int main()
{
	std::vector<hash_time_pair> v_packages{};

	for (auto& p : fs::directory_iterator(package_folder_path))
	{
		const std::string package_path = p.path().generic_string();

		Package* pkg = new Package(package_path);

		v_packages.push_back({ pkg->GetHash(), pkg->GetCreationDate() });
	}

	std::sort(v_packages.begin(), v_packages.end(), [](hash_time_pair const& a, hash_time_pair const& b)
		{
			return a.second > b.second;
		});

	g_pOodle = new Oodle();

	for(const auto& [hash, date] : v_packages)
	{
		Package* pkg = Package::GetPackage(hash);
		auto* date_info = std::localtime(&date);

		auto package_path = pkg->GetFilePath();

		auto package_name_begin = package_path.find_last_of('/') + 1;
		auto package_name_end = package_path.find_last_of('.');
		auto package_name = package_path.substr(package_name_begin, package_name_end - package_name_begin);

		const std::string package_date = "[ " + std::to_string(date_info->tm_mday) + "." + std::to_string(date_info->tm_mon + 1) + "." + std::to_string(date_info->tm_year + 1900) + " ] ";
		const std::string folder_path = output_folder_path + package_date + package_name + "/";

		CreateDirectoryA(folder_path.c_str(), NULL);

		pkg->SetupDataFrames(folder_path);
	}

	delete g_pOodle;
	Package::ClearMap();

	return 0;
}