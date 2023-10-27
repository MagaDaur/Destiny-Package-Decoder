#include "package.h"

template<class T>
std::vector<T*> D2_Array<T>::get() const
{
	std::vector<T*> ret{};

	uint64_t base_addr = uint64_t(this) + offset + 0x18;
	uint64_t struct_size = sizeof(T);

	for (int i = 0; i < size; i++)
		ret.push_back((T*)(base_addr + struct_size * i));

	return ret;
}

template<class T>
std::unique_ptr<T> FileReference<T>::get_data() const
{
	return Package::Extract(*this, true);
}
