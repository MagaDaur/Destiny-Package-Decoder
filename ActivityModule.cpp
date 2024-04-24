#include "activity_structs.h"
#include "package.h"

bool Package::ActivityModule::Export(const Entry& entry, const std::string& output_folder_path, bool force)
{
	if (entry.class_type == 0x80808E8E)
	{
		auto activity_container = pkg->ExtractEntry<D2Class_8E8E8080>(entry, force);
		if (!activity_container) return false;

		auto audio_data = activity_container->audio_data.get();
		auto struct_tag = *(uint32_t*)(uint64_t(audio_data) - 4);
		if (struct_tag != 0x8080986A) return false;

	}

	return true;
}

std::wstring StringHash::get_string() const
{
	if (Package::TextModule::string_hmap.find(hash) == Package::TextModule::string_hmap.end()) return L"unknown";
	return Package::TextModule::string_hmap.at(hash);
}
