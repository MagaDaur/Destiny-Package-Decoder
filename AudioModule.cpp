#include "package.h"
#include <Windows.h>

bool Package::AudioModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
	if (pkg->package_path.find(L"_ru_") == std::string::npos) return false;

	auto buffer = pkg->ExtractEntry(entry, force);
	if (!buffer) return false;

	auto file_name = output_folder_path + entry.GenerateName();

	auto wem_file_path = file_name + L".wem";
	auto wav_file_path = file_name + L".wav";

	FILE* output_file = _wfopen(wem_file_path.c_str(), L"wb");

	fwrite(buffer.get(), 1, entry.file_size, output_file);

	fclose(output_file);

	std::wstring vgmstream_command = L"external\\vgmstream\\vgmstream-cli.exe -i -o \"" + wav_file_path + L"\" \"" + wem_file_path + L"\"";

	_wsystem(vgmstream_command.c_str());

	DeleteFileW(wem_file_path.c_str());

	return true;
}