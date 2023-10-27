#include "package.h"
#include <algorithm>
#include <memory>
#include "text_structs.h"

Package::Package(const std::string& package_path) : PackageHeader(package_path), mAudio(this), mText(this), mBinary(this), mTexture(this)
{
	nonce[0] ^= (package_id >> 8) & 0xFF;
	nonce[11] ^= package_id & 0xFF;

	FILE* package = fopen(package_path.c_str(), "rb");

	entry_table.reserve(entry_table_size);
	block_table.reserve(block_table_size);

	fseek(package, entry_table_offset, SEEK_SET);
	for(uint32_t i = 0; i < entry_table_size; i++)
	{
		uint32_t entry_raw[4]{};
		fread(entry_raw, 4, 4, package);

		Entry entry(entry_raw);

		entry_table.push_back(entry);
	}

	fseek(package, block_table_offset, SEEK_SET);
	for(uint32_t i = 0; i < block_table_size; i++)
	{
		Block block{};
		fread(&block, sizeof(Block), 1, package);

		block_table.push_back(block);
	}

	fseek(package, hash64_table_offset + 0x50, SEEK_SET);
	for(uint32_t i = 0; i < hash64_table_size; i++)
	{
		HashContainer container{};
		fread(&container, sizeof(HashContainer), 1, package);

		hashtag_hmap.insert(std::make_pair(container.tag64, container));
	}
	
	fclose(package);

	package_hmap.insert(std::make_pair(GetHash(), *this));
	pkg_id_lp[package_id] = std::max(pkg_id_lp[package_id], patch_id);
}

Package* Package::GetPackage(int package_id, int patch_id = -1, int language_id = 0)
{
	auto package_hash = MakeHash(package_id, patch_id, language_id);

	if (package_hmap.find(package_hash) == package_hmap.end()) return nullptr;

	return &package_hmap.at(package_hash);
}

template<class T>
std::unique_ptr<uint8_t[]> Package::ExtractEntry(const FileReference<T>& reference, bool force)
{
	if (!reference.valid()) return nullptr;

	Package* ref_package = GetPackage(reference.get_package_id());
	Package* ref_package_ru = GetPackage(reference.get_package_id(), -1, 8);

	if (!ref_package && !ref_package_ru) return nullptr;

	ref_package = ref_package ? ref_package : ref_package_ru;

	if (reference.get_entry_id() >= ref_package->entry_table.size()) return nullptr;

	auto& entry = ref_package->entry_table.at(reference.get_entry_id());

	return ref_package->ExtractEntry(entry, force);
}

std::unique_ptr<uint8_t[]> Package::ExtractEntry(const Entry& entry, bool force = false)
{
	unsigned current_block_id = entry.starting_block_index;
	unsigned buffer_offset = 0;

	auto out_buffer{ std::make_unique<uint8_t[]>(entry.file_size) };
	auto block_buffer{ std::make_unique<uint8_t[]>(Block::MAX_SIZE) };
	auto decrypt_buffer{ std::make_unique<uint8_t[]>(Block::MAX_SIZE) };
	auto decomp_buffer{ std::make_unique<uint8_t[]>(Block::MAX_SIZE) };

	memset(out_buffer.get(), 0, entry.file_size);
	memset(block_buffer.get(), 0, Block::MAX_SIZE);
	memset(decrypt_buffer.get(), 0, Block::MAX_SIZE);
	memset(decomp_buffer.get(), 0, Block::MAX_SIZE);

	while (buffer_offset < entry.file_size)
	{
		auto& block = block_table[current_block_id];

		if (block.patch_id == patch_id) return nullptr;

		Package* patch_package = GetPackage(package_id, block.patch_id, language_id);
		if (!patch_package) return nullptr;

		FILE* patch_file = fopen(patch_package->GetFilePath().c_str(), "rb");
		if (!patch_file) return nullptr;

		fseek(patch_file, block.offset, SEEK_SET);
		fread(block_buffer.get(), 1, Block::MAX_SIZE, patch_file);
		fclose(patch_file);

		if (block.flags & 2)
			block.Decrypt(block_buffer.get(), decrypt_buffer.get(), nonce);
		else
			memcpy(decrypt_buffer.get(), block_buffer.get(), Block::MAX_SIZE);


		if (block.flags & 1)
			block.Decomp(decrypt_buffer.get(), decomp_buffer.get());
		else
			memcpy(decomp_buffer.get(), decrypt_buffer.get(), Block::MAX_SIZE);

		int offset = current_block_id == entry.starting_block_index ? entry.starting_block_offset : 0;
		int size = std::min(Block::MAX_SIZE - offset, entry.file_size - buffer_offset);

		memcpy(out_buffer.get() + buffer_offset, decomp_buffer.get() + offset, size);

		buffer_offset += size;
		current_block_id++;
	}

	return out_buffer;
}