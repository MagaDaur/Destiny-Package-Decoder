#include "activity_structs.h"
#include "package.h"

#include <sstream>
#include <iterator>

bool Package::ActivityModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
	if (entry.class_type == 0x80808E8E)
	{
		auto activity_container = pkg->ExtractEntry<D2Class_8E8E8080>(entry, force);
		if (!activity_container) return false;

		auto string_data = activity_container->string_data.get_data();
		if (!string_data) return false;

		auto string_container = string_data->string_container.get_data();
		if (!string_container) return false;

		auto file = activity_container->tmp_file.get_entry();
		if (!file) return false;

		auto map_info = activity_container->get_map_data();
	}

	return true;
}

std::wstring StringHash::get_string() const
{
	if (Package::TextModule::string_hmap.find(hash) == Package::TextModule::string_hmap.end()) return L"unknown";

	auto& vec = Package::TextModule::string_hmap.at(hash);
	std::wstring ret = L"| ";
	for (const auto& str : vec) ret += str + L" |";

	return ret;
}
