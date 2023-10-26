#pragma once
#include "package.h"

class AudioProcessor
{
public:
	static bool ExportAudioToFolder(const std::vector<size_t>&, const std::string&, bool force = false);
};