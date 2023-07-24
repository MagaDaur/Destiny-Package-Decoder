#pragma once
#include "package.h"

class MovieProcessor
{
public:
	static bool ExportMovieToFolder(const std::vector<size_t>&, const std::string&);
};