#pragma once
#include <string>

namespace helpers
{
	std::string to_hex(unsigned number);
	int get_patch_id(const std::string&);
};