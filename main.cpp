#include "package.h"
#include "OodleDecompress.h"
#include <filesystem>
#include <memory>
#include "text_structs.h"

namespace fs = std::filesystem;

Oodle* g_pOodle = nullptr;

const std::string package_folder_path = "D:\\Epic Games\\Destiny2\\packages\\";
const std::string output_folder_path = "D:/PackageDecoder/";

using hash_time_pair = std::pair<uint64_t, time_t>;

struct Deleter
{
	void operator()(D2Class_F7998080* p) const {
		//p->~dummy(); // Noop in your case
		delete[] reinterpret_cast<uint8_t*>(p);
	}
};

int main()
{
	auto buffer = std::make_unique<uint8_t[]>(100);
	std::unique_ptr<D2Class_F7998080, Deleter> header(reinterpret_cast<D2Class_F7998080*>(buffer.release()));

	std::vector<hash_time_pair> v_packages{};

	for (auto& p : fs::directory_iterator(package_folder_path))
	{
		const std::string package_path = p.path().generic_string();

		Package pkg(package_path);

		v_packages.push_back({ pkg.GetHash(), pkg.GetCreationDate() });
	}

	std::sort(v_packages.begin(), v_packages.end(), [](hash_time_pair const& a, hash_time_pair const& b)
		{
			return a.second > b.second;
		});

	g_pOodle = new Oodle();

	for (const auto& [hash, date] : v_packages)
	{
		
	}

	delete g_pOodle;

	return 0;
}