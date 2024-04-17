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
	g_pOodle = new Oodle();

	std::vector<hash_time_pair> v_packages{};

	for (auto& p : fs::directory_iterator(package_folder_path))
	{
		const std::string package_path = p.path().generic_string();

		Package* pkg = new Package(package_path);

		v_packages.push_back({ pkg->GetHash(), pkg->GetCreationDate() });

		pkg->SetupGlobals();
	}

	std::sort(v_packages.begin(), v_packages.end(), [](hash_time_pair const& a, hash_time_pair const& b)
		{
			return a.second > b.second;
		});

	for(const auto& [hash, date] : v_packages)
	{
		Package* pkg = Package::GetPackage(hash);
		auto* date_info = std::localtime(&date);

		auto package_path = pkg->GetFilePath();

		//if (package_path.find("_gear_") != std::string::npos) continue;
		//if (package_path.find("_sandbox_") != std::string::npos) continue;
		//if (package_path.find("_investment_globals_") == std::string::npos) continue;

		auto package_name_begin = package_path.find_last_of('/') + 1;
		auto package_name_end = package_path.find_last_of('.');
		auto package_name = package_path.substr(package_name_begin, package_name_end - package_name_begin);

		const std::string package_date = "[ " + std::to_string(date_info->tm_mday) + "." + std::to_string(date_info->tm_mon + 1) + "." + std::to_string(date_info->tm_year + 1900) + " ] ";
		const std::string folder_path = output_folder_path + package_date + package_name + "/";

		if (fs::exists(folder_path)) continue;

		CreateDirectoryA(folder_path.c_str(), NULL);

		if (!pkg->SetupDataFrames( folder_path, SETUP_ACTIVITY ))
			fs::remove_all(folder_path);
	}

	Package::ClearMap();

	delete g_pOodle;

	return 0;
}