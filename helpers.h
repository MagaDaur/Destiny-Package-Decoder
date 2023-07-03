#pragma once
#include <string>
#include <sstream>
namespace helpers
{
	std::string to_hex(unsigned number)
	{
		std::stringstream ss; ss << std::hex << number;
		return ss.str();
	}
};