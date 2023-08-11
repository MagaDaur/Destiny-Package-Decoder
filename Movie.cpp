#include "Movie.h"
#include "helpers.h"

bool MovieProcessor::ExportMovieToFolder(const std::vector<size_t>& movie_table, const std::string& folder_path)
{
	auto& entry_table = g_pPackage->GetEntryTable();
	for (auto& entry_index : movie_table)
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

		if (entry.GetType() == 27 && entry.GetSubType() == 1)
		{
			const std::string usm_file_path = folder_path + file_name + ".usm";

			FILE* usm_file = fopen(usm_file_path.c_str(), "wb");
			fwrite(raw_data_buffer, file_size, 1, usm_file);
			fclose(usm_file);
		}

		delete[] raw_data_buffer;
	}

	return true;
}