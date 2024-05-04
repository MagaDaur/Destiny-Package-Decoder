#include "package.h"
#include "audio_structs.h"
#include <Windows.h>

#include <filesystem>
namespace fs = std::filesystem;

static const std::wstring wem_converter_cmd = L"python external/wem_converter/wem_to_wav.py ";

bool Package::AudioModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
	auto buffer = pkg->ExtractEntry(entry, force);
	if (!buffer) return false;

	auto file_name = output_folder_path + entry.GenerateName();

	auto wem_file_path = file_name + L".wem";
	auto tmp_wav_file_path = file_name + L"_temp.wav";
	auto wav_file_path = file_name + L".wav";

	FILE* output_file = _wfopen(wem_file_path.c_str(), L"wb");

	fwrite(buffer.get(), 1, entry.file_size, output_file);

	fclose(output_file);

	const std::wstring vgmstream_command = L"external\\vgmstream\\vgmstream-cli.exe -i -o \"" + tmp_wav_file_path + L"\" \"" + wem_file_path + L"\"";

	_wsystem(vgmstream_command.c_str());
	DeleteFileW(wem_file_path.c_str());

	if (!fs::exists(tmp_wav_file_path)) return false;

	WAVHeader tmp_wav_header(tmp_wav_file_path);

	if (tmp_wav_header.NumChannel != 1)
	{
		const std::wstring ffmpeg_command = L"ffmpeg -i \"" + tmp_wav_file_path + L"\" -f wav -bitexact -ac 1 \"" + wav_file_path + L"\"";
		_wsystem(ffmpeg_command.c_str());
		DeleteFileW(tmp_wav_file_path.c_str());

		return fs::exists(wav_file_path);
	}

	fs::rename(tmp_wav_file_path, wav_file_path);

	return true;
}

std::vector<std::wstring> D2Class_38978080::ExportWavs(const std::wstring& output_folder_path)
{
	std::vector<std::wstring> filenames{}; filenames.reserve(wems.size);
	for (const auto& wem : wems.get())
	{
		auto wem_entry = wem->wem_file.get_entry();
		auto wem_pkg = wem->wem_file.get_package();
		if (!wem_pkg || !wem_entry) continue;

		if (wem_pkg->mAudio.Export(*wem_entry, output_folder_path, true))
			filenames.push_back(wem_entry->GenerateName() + L".wav");
	}

	return filenames;
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

WAVHeader::WAVHeader(const std::wstring& path)
{
	FILE* wav = _wfopen(path.c_str(), L"rb");
	if (!wav) return;

	fread(this, sizeof(WAVHeader), 1, wav);

	fclose(wav);
}

bool ConcatWavs(const std::wstring& folder_path, const std::vector<std::wstring>& names, const std::wstring& prefix)
{
	if (names.empty()) return false;

	const auto concat_wav_path = folder_path + prefix + L"dialogue.wav";
	FILE* concat_wav = _wfopen(concat_wav_path.c_str(), L"wb");
	if (!concat_wav) return false;

	WAVHeader base_header(folder_path + names[0]);

	fseek(concat_wav, sizeof(WAVHeader), SEEK_SET);

	for (const auto& wav_name : names)
	{
		const auto cur_path = folder_path + wav_name;
		WAVHeader cur_header(cur_path);

		FILE* wav_file = _wfopen(cur_path.c_str(), L"rb");
		if (!wav_file) continue;

		fseek(wav_file, sizeof(WAVHeader), SEEK_SET);

		uint8_t* buffer = new uint8_t[cur_header.SubChunk2Size];

		fread(buffer, 1, cur_header.SubChunk2Size, wav_file);
		fwrite(buffer, 1, cur_header.SubChunk2Size, concat_wav);

		delete[] buffer;

		fclose(wav_file);
		fs::remove(cur_path);

		base_header.ChunkSize += cur_header.SubChunk2Size;
		base_header.SubChunk2Size += cur_header.SubChunk2Size;
	}

	fseek(concat_wav, 0, SEEK_SET);

	fwrite(&base_header, sizeof(WAVHeader), 1, concat_wav);

	fclose(concat_wav);

	return true;
}