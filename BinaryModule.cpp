#include "package.h"

bool Package::BinaryModule::Export(const Entry& entry, const std::string& output_folder_path, bool force)
{
	PackageModule::Export(entry, output_folder_path, force);

	auto file_name = output_folder_path + entry.GenerateName();
	if (entry.type == 26 && entry.subtype == 6) file_name += ".bnk";
	else if (entry.type == 27 && entry.subtype == 1) file_name += ".usm";
	else file_name += ".bin";

	FILE* output_file = fopen(file_name.c_str(), "wb");

	auto buffer = pkg->ExtractEntry(entry, force);
	if (!buffer) return false;

	fwrite(buffer.get(), 1, entry.file_size, output_file);

	fclose(output_file);

	return true;
}