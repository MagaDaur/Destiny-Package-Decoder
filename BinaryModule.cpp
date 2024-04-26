#include "package.h"

bool Package::BinaryModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
	auto buffer = pkg->ExtractEntry(entry, force);
	if (!buffer) return false;

	auto file_name = output_folder_path + entry.GenerateName();
	if (entry.type == 26 && entry.subtype == 6) file_name += L".bnk";
	else if (entry.type == 27 && entry.subtype == 1) file_name += L".usm";
	else file_name += L".bin";

	FILE* output_file = _wfopen(file_name.c_str(), L"wb");

	fwrite(buffer.get(), 1, entry.file_size, output_file);

	fclose(output_file);

	return true;
}