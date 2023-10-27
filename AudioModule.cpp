#include "package.h"

//std::string vgmstream_command = "external\\vgmstream\\vgmstream-cli.exe -i -o \"" + output_filepath + "\" \"" + wem_file_path + "\"";

bool Package::AudioModule::Export(const Entry& entry, const std::string& output_folder_path, bool force = false)
{
	return true;
}