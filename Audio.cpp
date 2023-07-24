#include "Audio.h"
#include "helpers.h"

bool AudioProcessor::ExportAudioToFolder(const std::vector<size_t>& audio_table, const std::string& folder_path)
{
	auto& entry_table = g_pPackage->GetEntryTable();
	for (auto& entry_index : audio_table)
	{
		auto& entry = entry_table[entry_index];
		
		const std::string file_name = helpers::entry_file_name(entry, entry_index);
		auto file_size = entry.GetFileSize();
		unsigned char* raw_data_buffer = new (unsigned char[file_size]);

		if (!g_pPackage->ExtractEntryToMemory(entry, raw_data_buffer))
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
			std::string vgmstream_command = "vgmstream\\vgmstream-cli.exe " + wem_file_path + " -o " + output_filepath;
			system(vgmstream_command.c_str());

			DeleteFileA(wem_file_path.c_str());
		}

		delete[] raw_data_buffer;
	}
	return true;
}


// https://github.com/MontagueM/Charm/blob/ef4837efb6039d72d0b5a315321b52fa4129fcba/Field/Entities/EntityStructs.cs#L396