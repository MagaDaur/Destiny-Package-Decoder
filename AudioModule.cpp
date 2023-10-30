#include "package.h"
#include <Windows.h>

bool Package::AudioModule::Export(const Entry& entry, const std::string& output_folder_path, bool force)
{
	auto buffer = pkg->ExtractEntry(entry, force);
	if (!buffer) return false;

	auto file_name = output_folder_path + entry.GenerateName();

	auto wem_file_path = file_name + ".wem";
	auto wav_file_path = file_name + ".wav";

	FILE* output_file = fopen(wem_file_path.c_str(), "wb");

	fwrite(buffer.get(), 1, entry.file_size, output_file);

	fclose(output_file);

	std::string vgmstream_command = "external\\vgmstream\\vgmstream-cli.exe -i -o \"" + wav_file_path + "\" \"" + wem_file_path + "\"";

	system(vgmstream_command.c_str());

	DeleteFileA(wem_file_path.c_str());

	return true;
}