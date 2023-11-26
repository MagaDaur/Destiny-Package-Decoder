#pragma once

#include <memory>

template <class T>
struct Deleter
{ 
	void operator()(T* p) const
	{
		delete[] reinterpret_cast<uint8_t*>(p);
	};
};

template<class T>
using un_block_ptr = std::unique_ptr<T, Deleter<T>>;