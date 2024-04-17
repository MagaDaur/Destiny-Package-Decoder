#include "activity_structs.h"
#include "package.h"

bool Package::ActivityModule::Export(const Entry& entry, const std::string& output_folder_path, bool force)
{
	if (entry.class_type == 0x80808E8B)
	{
		auto activity_container = pkg->ExtractEntry<D2Class_8B8E8080>(entry, force);
		if (!activity_container) return false;

		auto name = activity_container->location_name.get_string();
		auto dev_name = activity_container->destination_name.get();
		auto location_activities = activity_container->location_activities.get();
		for (auto& activivty : location_activities)
		{
			auto activity_name = activivty->activity_name.get();
			auto activity_shortname = activivty->short_name.get_string();
		}
	}

	if (entry.class_type == 0x80808E8E)
	{
		auto activity_container = pkg->ExtractEntry<D2Class_8E8E8080>(entry, force);
		if (!activity_container) return false;
	}

	return true;
}

std::wstring StringHashReference::get_string() const
{
	if (Package::TextModule::string_hmap.find(hash) == Package::TextModule::string_hmap.end()) return L"unknown";
	return Package::TextModule::string_hmap.at(hash);
}
