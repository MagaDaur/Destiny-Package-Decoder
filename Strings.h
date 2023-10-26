#pragma once

#include <vector>
#include <string>
#include <map>

class StringProcessor
{
public:
	static bool ExportTextToFolder(const std::vector<size_t>&, const std::string&, bool force = false);
};