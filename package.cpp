#include "package.h"
#include <Windows.h>

#undef min
#undef max

#include <algorithm>
#include <memory>
#include <sstream>
#include <filesystem>

namespace fs = std::filesystem;

bool Package::ExportAll(const std::wstring& folder_path, int flags)
{
	const auto audio_folder_path	= (folder_path + L"audio/");
	const auto text_folder_path		= (folder_path + L"text/");
	const auto texture_folder_path	= (folder_path + L"image/");
	const auto unknown_folder_path	= (folder_path + L"unknown/");
	const auto bungie_folder_path	= (folder_path + L"bungie/");
	const auto movie_folder_path	= (folder_path + L"movie/");
	const auto bnk_folder_path		= (folder_path + L"bnk/");
	const auto items_folder_path	= (folder_path + L"items/");
	const auto activity_folder_path = (folder_path + L"activities/");

	CreateDirectoryW(audio_folder_path.c_str(), NULL);
	CreateDirectoryW(text_folder_path.c_str(), NULL);
	CreateDirectoryW(texture_folder_path.c_str(), NULL);
	CreateDirectoryW(unknown_folder_path.c_str(), NULL);
	CreateDirectoryW(bungie_folder_path.c_str(), NULL);
	CreateDirectoryW(movie_folder_path.c_str(), NULL);
	CreateDirectoryW(bnk_folder_path.c_str(), NULL);
	CreateDirectoryW(items_folder_path.c_str(), NULL);
	CreateDirectoryW(activity_folder_path.c_str(), NULL);

	for (auto it = entry_table.rbegin(); it != entry_table.rend(); it++)
	{
		const auto& entry = *it;

		if ((flags & SETUP_ACTIVITY) && entry.class_type == 0x80808E8E)
		{
			mActivity.Export(entry, activity_folder_path);
		}

		if ((flags & SETUP_AUDIO) && entry.type == 26 && entry.subtype == 7)
		{
			mAudio.Export(entry, audio_folder_path);
		}
		else if ((flags & SETUP_INVESTMENT) && entry.class_type == 0x8080799D)
		{
			mInvestment.Export(entry, items_folder_path);
		}
		else if ((flags & SETUP_TEXTURE) && entry.type == 32 && entry.subtype >= 1 && entry.subtype <= 3)
		{
			mTexture.Export(entry, texture_folder_path);
		}
		else if ((flags & SETUP_BNK) && entry.type == 26 && entry.subtype == 6)
		{
			mBinary.Export(entry, bnk_folder_path);
		}
		else if ((flags & SETUP_MOVIE) && entry.type == 27 && entry.subtype == 1)
		{
			mBinary.Export(entry, movie_folder_path);
		}
		else if ((flags & SETUP_TEXT) && (entry.class_type == 0x808099EF || entry.class_type == 0x80809EED || entry.class_type == 0x808099F1))
		{
			mText.Export(entry, text_folder_path);
		}
		else if ((flags & SETUP_STRUCT) && entry.class_type >> 16 == 0x8080)
		{
			mBinary.Export(entry, bungie_folder_path);
		}
		else if ((flags & SETUP_UNKNOWN))
		{
			mBinary.Export(entry, unknown_folder_path);
		}
	}

	if (fs::is_empty(audio_folder_path))
		fs::remove_all(audio_folder_path);

	if (fs::is_empty(text_folder_path))
		fs::remove_all(text_folder_path);

	if (fs::is_empty(texture_folder_path))
		fs::remove_all(texture_folder_path);

	if (fs::is_empty(unknown_folder_path))
		fs::remove_all(unknown_folder_path);

	if (fs::is_empty(bungie_folder_path))
		fs::remove_all(bungie_folder_path);

	if (fs::is_empty(movie_folder_path))
		fs::remove_all(movie_folder_path);

	if (fs::is_empty(bnk_folder_path))
		fs::remove_all(bnk_folder_path);

	if (fs::is_empty(items_folder_path))
		fs::remove_all(items_folder_path);

	if (fs::is_empty(activity_folder_path))
		fs::remove_all(activity_folder_path);

	return !fs::is_empty(folder_path);
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

		if (!force && block.patch_id != patch_id) return nullptr;

		Package* patch_package = GetPackage(uint16_t(package_id), int16_t(block.patch_id), uint16_t(language_id));
		if (!patch_package) return nullptr;

		FILE* patch_file = _wfopen(patch_package->GetFilePath().c_str(), L"rb");
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

Package::Package(const std::wstring& package_path) : PackageHeader(package_path), mAudio(this), mText(this), mBinary(this), mTexture(this), mInvestment(this), mActivity(this)
{
	nonce[0] ^= (package_id >> 8) & 0xFF;
	nonce[11] ^= package_id & 0xFF;

	FILE* package = _wfopen(package_path.c_str(), L"rb");

	entry_table.reserve(entry_table_size);
	block_table.reserve(block_table_size);

	fseek(package, entry_table_offset, SEEK_SET);
	for (uint32_t i = 0; i < entry_table_size; i++)
	{
		Entry::entry_raw raw{};
		fread(&raw, 4, 4, package);
		entry_table.push_back({raw, i});
	}

	fseek(package, block_table_offset, SEEK_SET);
	for (uint32_t i = 0; i < block_table_size; i++)
	{
		Block block{};
		fread(&block, sizeof(Block), 1, package);

		block_table.push_back(block);
	}

	fseek(package, hash64_table_offset + 0x50, SEEK_SET);
	for (uint32_t i = 0; i < hash64_table_size; i++)
	{
		HashContainer container{};
		fread(&container, sizeof(HashContainer), 1, package);

		hashtag_hmap.insert({ container.tag64, container });
	}

	fclose(package);

	package_hmap.insert({ GetHash(), this });
	pkg_ltstptch_hmap[package_id] = std::max(pkg_ltstptch_hmap[package_id], patch_id);
}

bool Package::SetupGlobals()
{
	for (const auto& entry : entry_table)
	{
		if (entry.class_type == 0x80805A09)
		{
			mInvestment.SetupIndexedStrings(entry);
		}
		if (entry.class_type == 0x80805A01)
		{
			mInvestment.SetupIndexedIcons(entry);
		}
		if (entry.class_type == 0x80805499)
		{
			mInvestment.SetupIndexedItems(entry);
		}
		if (entry.class_type == 0x808099EF)
		{
			mText.SetupStringHashes(entry);
		}
	}
	return true;
}

void Package::ClearMap()
{
	for (auto& pair : package_hmap)
	{
		delete pair.second;
	}
}

Package* Package::GetPackage(const uint16_t& package_id, const int16_t& patch_id, const uint16_t& language_id)
{
	auto package_hash = MakeHash(package_id, patch_id, language_id);

	if (package_hmap.find(package_hash) == package_hmap.end()) return nullptr;

	return package_hmap.at(package_hash);
}

std::wstring Entry::GenerateName() const
{
	std::wstringstream ss; ss << std::hex << std::uppercase << class_type;
	return std::to_wstring(entry_id) + L"_" + ss.str();
}