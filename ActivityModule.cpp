#include "activity_structs.h"
#include "package.h"
#include "audio_structs.h"
#include "filereference.h"

#include <Windows.h>

#include <filesystem>

namespace fs = std::filesystem;

bool Package::ActivityModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
	if (entry.class_type == 0x80808E8E)
	{
		auto activity_container = pkg->ExtractEntry<D2Class_8E8E8080>(entry, force);
		if (!activity_container) return false;

		auto child_activity = activity_container->child_activity.get_data();
		if (!child_activity) return false;

		auto map_data = activity_container->get_map_data();
		auto strings = activity_container->get_strings();

		auto activity_name = activity_container->get_activity_dev_name();
		auto activity_folder = output_folder_path + activity_name + L"/";

		CreateDirectoryW(activity_folder.c_str(), NULL);

		activity_container->export_dialogues(activity_folder);

		if (fs::is_empty(activity_folder))
			fs::remove_all(activity_folder);
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

std::wstring StringHashRef64::get_string() const
{
	auto string_container = ref.get_data();
	if (!string_container) return L"unknown";

	auto string_conatiner_buffer = string_container->string_container[12].get_data();
	if (!string_conatiner_buffer) return L"unknown";

	auto string_hashes = string_container->string_hashes.get();
	auto string_buffer = string_conatiner_buffer->string_parts.get();

	for (int i = 0; i < string_hashes.size(); i++)
		if (string_hashes[i]->string_hash == hash)
			return string_buffer[i]->get_string();

	return L"unknown";
}

static bool ConcatWavs(const std::vector<std::wstring>& paths);

bool D2Class_8E8E8080::export_dialogues(const std::wstring& output_folder_path)
{
	auto dialogue_folder = output_folder_path + L"dialogues/";
	CreateDirectoryW(dialogue_folder.c_str(), NULL);

	auto audio_data = get_audio_data();
	if (!audio_data) return false;

	for (const auto& dialog_ref : audio_data->dialogue_ref_table.get())
	{
		auto dialogue_table = dialog_ref->dialogue_table.get_data();
		if (!dialogue_table) continue;

		auto dialogue_array = dialogue_table->unk_array1.get();

		for (int i = dialogue_array.size() - 1; i >= 0; i--)
		{
			auto elem2 = dialogue_array[i]->get_data();
			if (!elem2) continue;

			auto array_1 = elem2->unk_array0.get();

			for (int j = 0; j < array_1.size(); j++)
			{
				auto elem4 = array_1[j]->get_data();
				if (!elem4) continue;

				auto wem_container = elem4->wem.get_data();
				if (!wem_container) continue;

				wem_container->ExportWems(dialogue_folder + std::to_wstring(i) + L"_" + std::to_wstring(j) + L"_");
			}

			std::vector<std::wstring> wav_paths{};

			for (const auto& path : fs::directory_iterator(dialogue_folder))
				if (path.path().filename().wstring()[0] == std::to_wstring(i)[0])
					wav_paths.push_back(path.path().wstring());

			ConcatWavs(wav_paths);
		}
	}

	if (fs::is_empty(dialogue_folder))
		fs::remove_all(dialogue_folder);

	return true;
}

std::vector<std::wstring> D2Class_8E8E8080::get_activities()
{
	auto string_data = string_data_ref.get_data();
	if (!string_data) return {};

	std::vector<std::wstring> ret{};
	for (const auto& activity : string_data->location_activities.get())
		ret.push_back(Helpers::to_wstring(activity->activity_name.get()));

	return ret;
}

std::wstring D2Class_8E8E8080::get_activity_dev_name()
{
	auto string_data = string_data_ref.get_data();
	if (!string_data) return L"unknown";

	for (const auto& activity : string_data->location_activities.get())
		if (activity->short_name.hash == unused_strings[0].hash)
			return Helpers::to_wstring(activity->activity_name.get());
}

struct WavHeader
{
	uint32_t RIFF{};
	uint32_t ChunkSize{};
	uint32_t WAVE{};
	uint32_t fmt{};

	uint32_t Subchunk1Size{};
	uint16_t AudioFormat{};
	uint16_t NumChannel{};

	uint32_t SampleRate{};
	uint32_t ByteRate{};

	uint16_t BlockAlign{};
	uint16_t BitsPerSample{};

	uint32_t data{};

	uint32_t SubChunk2Size{};

	uint8_t* get_data(const std::wstring& path)
	{
		FILE* wav_file = _wfopen(path.c_str(), L"rb");

		fread(this, sizeof(WavHeader), 1, wav_file);

		uint8_t* data = new uint8_t[SubChunk2Size];

		fread(data, 1, SubChunk2Size, wav_file);

		fclose(wav_file);

		return data;
	}
};

static bool ConcatWavs(const std::vector<std::wstring>& paths)
{
	if (paths.empty()) return false;

	WavHeader base_wav;
	uint8_t* base_data = base_wav.get_data(paths[0]);

	FILE* base_file = _wfopen(paths[0].c_str(), L"wb");
	fwrite(&base_wav, sizeof(WavHeader), 1, base_file);
	fwrite(base_data, base_wav.SubChunk2Size, 1, base_file);

	for (int i = 1; i < paths.size(); i++)
	{
		WavHeader wav;
		uint8_t* wav_data = wav.get_data(paths[i]);

		base_wav.ChunkSize += wav.SubChunk2Size;
		base_wav.SubChunk2Size += wav.SubChunk2Size;

		fwrite(wav_data, wav.SubChunk2Size, 1, base_file);

		DeleteFileW(paths[i].c_str());

		delete[] wav_data;
	}

	fseek(base_file, 0, SEEK_SET);
	fwrite(&base_wav, sizeof(WavHeader), 1, base_file);

	fclose(base_file);

	delete[] base_data;
	
	return true;
}