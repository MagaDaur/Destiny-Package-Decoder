#include "package.h"
#include "text_structs.h"

bool Package::TextModule::Export(const Entry& entry, const std::string& output_folder_path, bool force)
{
	if (entry.class_type == 0x808099EF)
	{
		auto string_container_info = pkg->ExtractEntry<D2Class_EF998080>(entry, force);
		if (!string_container_info) return false;

		auto string_container = string_container_info->string_container[12].get_data();

		auto string_hashes = string_container_info->string_hashes.get();
		auto string_buffer = string_container->strings.get();

		for (int i = 0; i < std::min(string_hashes.size(), string_buffer.size()); i++)
		{
			string_hmap.insert({ string_hashes[i]->string_hash, string_buffer[i]->get_string() });
		}
	}
	else if (entry.class_type == 0x808099F1)
	{
		auto string_container = pkg->ExtractEntry<D2Class_F1998080>(entry, force);
	}
	else if (entry.class_type == 0x80809EED)
	{
		auto path_container = pkg->ExtractEntry<D2Class_ED9E8080>(entry, force);
	}
	return true;
}

