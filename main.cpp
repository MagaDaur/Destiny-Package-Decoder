#include "package.h"
#include "OodleDecompress.h"
#include <filesystem>

namespace fs = std::filesystem;

Oodle* g_pOodle = nullptr;

const std::string package_folder_path = "D:/Epic Games/Destiny2/packages/";
const std::string output_folder_path = "D:/PackageDecoder/";

int main()
{
	g_pOodle = new Oodle();

	CreateDirectoryA(output_folder_path.c_str(), NULL);

	std::vector<hash_time_pair> v_packages{};

	for (auto& p : fs::directory_iterator(package_folder_path))
	{
		const std::string package_path = p.path().generic_string();

		if (package_path.find("_redacted_") != std::string::npos) continue;
		if (package_path.find("_gear_") != std::string::npos) continue;
		if (package_path.find("_sandbox_") != std::string::npos) continue;

		Package* pkg = new Package(package_path);

		v_packages.push_back({ pkg->GetHash(), pkg->GetCreationDate() });
	}

	// must do this in a new loop!
	for (auto& [hash, date] : v_packages)
	{
		auto pkg = Package::GetPackage(hash);

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

		if (package_path.find("_02e7_") == std::string::npos) continue;

		auto package_name_begin = package_path.find_last_of('/') + 1;
		auto package_name_end = package_path.find_last_of('.');
		auto package_name = package_path.substr(package_name_begin, package_name_end - package_name_begin);

		const std::string package_date = "[ " + std::to_string(date_info->tm_mday) + "." + std::to_string(date_info->tm_mon + 1) + "." + std::to_string(date_info->tm_year + 1900) + " ] ";
		const std::string folder_path = output_folder_path + package_date + package_name + "/";

		CreateDirectoryA(folder_path.c_str(), NULL);

		if (!pkg->ExportAll( folder_path, SETUP_INVESTMENT ))
			fs::remove_all(folder_path);
	}

	Package::ClearMap();

	delete g_pOodle;

	return 0;
}