#include "package.h"
#include "audio_structs.h"
#include <Windows.h>

bool Package::AudioModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
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

bool D2Class_38978080::ExportWems(const std::wstring& output_folder_path)
{
	int counter = 0;
	for (const auto& wem : wems.get())
	{
		auto wem_entry = wem->wem_file.get_entry();
		auto wem_pkg = wem->wem_file.get_package();
		if (!wem_pkg || !wem_entry) continue;

		wem_pkg->mAudio.Export(*wem_entry, output_folder_path, true);
		counter++;
	}

	return true;
}

std::wstring StringHashRefExt::get_string()
{
	auto string_container = ref.get_data();
	if (!string_container) return L"unknown";

	auto string_conatiner_buffer = string_container->string_container[12].get_data();
	if (!string_conatiner_buffer) return L"unknown";

	auto string_hashes = string_container->string_hashes.get();
	auto string_buffer = string_conatiner_buffer->string_parts.get();

	for (int i = 0; i < string_hashes.size(); i++)
		if (string_hashes[i]->string_hash == string_hash)
			return string_buffer[i]->get_string();

	return L"unknown";

}