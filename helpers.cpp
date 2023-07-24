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
	return std::to_string(entry_index) + "_" + std::to_string(entry.GetRefID()) + "_" + std::to_string(entry.GetType()) + "_" + std::to_string(entry.GetSubType());
}