﻿#include "activity_structs.h"
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
		if (activity_container->ExportDialogues(activity_folder))
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

bool D2Class_8E8E8080::ExportDialogues(const std::wstring& output_folder_path)
{
	auto dialogue_folder = output_folder_path + L"dialogues/";
	CreateDirectoryW(dialogue_folder.c_str(), NULL);

	auto audio_data = get_audio_data();
	if (!audio_data) return false;

	for (const auto& dialogue_ref : audio_data->dialogue_array.get())
	{
		auto dialogue = dialogue_ref->dialogue_ref.get_data();
		if (!dialogue) continue;

		auto sentances_data = dialogue->sentance_array.get();

		for (int i = 0; i < sentances_data.size(); i++)
		{
			auto phrase_array = sentances_data[i]->get_phrase_array();
			if (phrase_array.empty()) continue;

			const auto sentance_prefix = std::to_wstring(i) + L"_";
			std::vector<std::wstring> wav_names{};

			const auto subtitle_path = dialogue_folder + sentance_prefix + L"subtitles.txt";
			FILE* subtitle_file = _wfopen(subtitle_path.c_str(), L"wb,ccs=UTF-8");

			for (const auto& phrase : phrase_array)
			{
				auto subtitle1 = phrase->subtitle1.get_string();
				//auto subtitle2 = phrase->subtitle2.get_string(); // its identical, why??

				if (subtitle1.size())
				{
					subtitle1 += L"\n";
					fwrite(subtitle1.c_str(), sizeof(wchar_t), subtitle1.size(), subtitle_file);
				}

				//if (subtitle2.size())
				//{
				//	subtitle2 += L"\n\n";
				//	fwrite(subtitle2.c_str(), sizeof(wchar_t), subtitle2.size(), subtitle_file);
				//}

				auto wem_container = phrase->wem.get_data();
				if (!wem_container) continue;

				auto exported_wavs = wem_container->ExportWavs(dialogue_folder);

				for (const auto& wav_filename : exported_wavs)
					wav_names.push_back(wav_filename);
			}

			fclose(subtitle_file);

			ConcatWavs(dialogue_folder, wav_names, sentance_prefix);
		}
	}

	return fs::is_empty(dialogue_folder);
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

	return L"unknown";
}