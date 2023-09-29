#include "Audio.h"
#include "helpers.h"
#include <Windows.h>

bool AudioProcessor::ExportAudioToFolder(const std::vector<size_t>& audio_table, const std::string& folder_path)
{
	auto& entry_table = g_pPackage->GetEntryTable();
	bool has_written = false;
	for (auto& entry_index : audio_table)
	{
		auto& entry = entry_table[entry_index];
		
		const std::string file_name = helpers::entry_file_name(entry, entry_index);
		auto file_size = entry.GetFileSize();
		unsigned char* raw_data_buffer = new (unsigned char[file_size]);

		if (!g_pPackage->ExtractEntry(entry, raw_data_buffer))
		{
			delete[] raw_data_buffer;
			continue;
		}

		if (entry.GetType() == 26 && entry.GetSubType() == 7)
		{
			const std::string wem_file_path = folder_path + file_name + ".wem";

			FILE* temp_wem_file = fopen(wem_file_path.c_str(), "wb");
			fwrite(raw_data_buffer, file_size, 1, temp_wem_file);
			fclose(temp_wem_file);

			std::string output_filepath = folder_path + file_name + ".wav";
			std::string vgmstream_command = "external\\vgmstream\\vgmstream-cli.exe -i -o \"" + output_filepath + "\" \"" + wem_file_path + "\"";
			system(vgmstream_command.c_str());

			DeleteFileA(wem_file_path.c_str());

			has_written = true;
		}

		delete[] raw_data_buffer;
	}
	return has_written;
}