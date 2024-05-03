#include "package.h"
#include "OodleDecompress.h"
#include <filesystem>

#include <io.h>
#include <fcntl.h>

namespace fs = std::filesystem;

Oodle* g_pOodle = nullptr;

const std::wstring package_folder_path = L"D:/Epic Games/Destiny2/packages/";
const std::wstring root_folder_path = L"D:/PackageDecoder/";

int main()
{
	auto warning = _setmode(_fileno(stdout), _O_U16TEXT);

	g_pOodle = new Oodle();

	CreateDirectoryW(root_folder_path.c_str(), NULL);

	std::vector<hash_time_pair> v_packages{};

	for (auto& p : fs::directory_iterator(package_folder_path))
	{
		const std::wstring package_path = p.path().wstring();

		if (package_path.find(L"_redacted_") != std::string::npos) continue;
		if (package_path.find(L"_gear_") != std::string::npos) continue;
		if (package_path.find(L"_sandbox_") != std::string::npos) continue;

		Package* pkg = new Package(package_path);

		v_packages.push_back({ pkg->GetHash(), pkg->GetCreationDate() });
	}

	std::sort(v_packages.begin(), v_packages.end(), [](hash_time_pair const& a, hash_time_pair const& b)
	{
		return a.second > b.second;
	});

	// must do this in a new loop! after sort!!!!
	for (auto& [hash, date] : v_packages)
	{
		auto pkg = Package::GetPackage(hash);

		pkg->SetupGlobals();
	}

	for(const auto& [hash, date] : v_packages)
	{
		Package* pkg = Package::GetPackage(hash);
		auto* date_info = std::localtime(&date);

		auto package_path = pkg->GetFilePath();

		auto package_name_begin = package_path.find_last_of('/') + 1;
		auto package_name_end = package_path.find_last_of('.');
		auto package_name = package_path.substr(package_name_begin, package_name_end - package_name_begin);

		const std::wstring package_date = L"[ " + std::to_wstring(date_info->tm_mday) + L"." + std::to_wstring(date_info->tm_mon + 1) + L"." + std::to_wstring(date_info->tm_year + 1900) + L" ] ";
		const std::wstring folder_path = root_folder_path + package_date + package_name + L"/";

		CreateDirectoryW(folder_path.c_str(), NULL);

		if (!pkg->ExportAll( folder_path, SETUP_ACTIVITY ))
			fs::remove_all(folder_path);
	}

	Package::ClearMap();

	delete g_pOodle;

	return 0;
}