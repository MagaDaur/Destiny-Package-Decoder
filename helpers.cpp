#include "helpers.h"
#include <sstream>

std::string helpers::to_hex(unsigned number)
{
	std::stringstream ss; ss << std::hex << number;
	return ss.str();
}

int helpers::get_patch_id(const std::string& package_path)
{
	return stoi(package_path.substr(package_path.find_last_of('.') - 1, 1));
}

std::string helpers::entry_file_name(const Entry& entry, size_t entry_index)
{
	if (entry.A >> 16 != 0x8080)
		return helpers::to_hex((entry.A & (~0x1FFF)) | (entry_index & 0x1FFF));
	return helpers::to_hex(entry.A);
}