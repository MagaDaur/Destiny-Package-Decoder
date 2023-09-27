#pragma once
#include <string>
#include "package_entry.h"

namespace helpers
{
	std::string to_hex(unsigned number);
	int get_patch_id(const std::string&);
	std::string entry_file_name(const Entry&);
};