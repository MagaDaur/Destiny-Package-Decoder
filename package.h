#ifndef PACKAGE_H
#define PACKAGE_H

#include <vector>
#include <unordered_map>
#include <map>

#include "package_header.h"
#include "memory.h"
#include "filereference.h"

#include "text_structs.h"
#include "investment_structs.h"

#define SETUP_TEXT			(1 << 0)
#define SETUP_AUDIO			(1 << 1)
#define SETUP_TEXTURE		(1 << 2)
#define SETUP_STRUCT		(1 << 3)
#define SETUP_MOVIE			(1 << 4)
#define SETUP_BNK			(1 << 5)
#define SETUP_UNKNOWN		(1 << 6)
#define SETUP_INVESTMENT	(1 << 7)
#define SETUP_ACTIVITY		(1 << 8)
#define SETUP_ALL			0xFFFFFFFF

using hash_time_pair = std::pair<uint64_t, time_t>;

class Package;

class PackageModule
{
protected:
	PackageModule() : pkg(nullptr) {};
	PackageModule(Package* pkg) : pkg(pkg) {};

	Package* pkg;
};

class Package : public PackageHeader
{
public:
	Package(const std::wstring&);

	bool SetupGlobals();
	bool ExportAll(const std::wstring& folder_path, int flags = SETUP_ALL);

	Entry* GetEntry(uint32_t idx)
	{
		if (idx >= entry_table.size()) return nullptr;
		return &entry_table[idx];
	}

	static Package* GetPackage(const uint64_t& hash) { return package_hmap.at(hash); };
	static Package* GetPackage(const uint16_t& package_id, const int16_t& patch_id = -1, const uint16_t& language_id = 0);

	std::unique_ptr<uint8_t[]> ExtractEntry(const Entry&, bool);

	template<class T>
	static un_block_ptr<T> ExtractEntry(const FileReference<T>& reference, bool force = false)
	{
		Package* ref_package = GetPackage(reference.get_package_id());
		Package* ref_package_ru = GetPackage(reference.get_package_id(), -1, 8);

		if (!ref_package && !ref_package_ru) return nullptr;

		ref_package = ref_package ? ref_package : ref_package_ru;

		if (reference.get_entry_id() >= ref_package->entry_table.size()) return nullptr;

		auto& entry = ref_package->entry_table.at(reference.get_entry_id());

		return ref_package->ExtractEntry<T>(entry, force);
	}

	template<class T>
	un_block_ptr<T> ExtractEntry(const Entry& entry, bool force = false)
	{
		return un_block_ptr<T>(reinterpret_cast<T*>(ExtractEntry(entry, force).release()));
	};

	static const HashContainer* GetHashContainer(uint64_t reference)
	{
		if (hashtag_hmap.find(reference) == hashtag_hmap.end()) return nullptr;
		return &hashtag_hmap.at(reference);
	}

	static uint64_t MakeHash(uint64_t package_id, int64_t patch_id = -1, uint64_t language_id = 0) {
		if (patch_id == -1) patch_id = pkg_ltstptch_hmap[package_id];
		return package_id | (patch_id << 16) | (language_id << 32);
	};

	static void ClearMap();
public:
	std::vector<Entry> entry_table;
	std::vector<Block> block_table;

	class AudioModule : PackageModule
	{
	public:
		AudioModule(Package* pkg) : PackageModule(pkg) {};

		bool Export(const Entry&, const std::wstring&, bool force = false);
	public:
	};

	class TextModule : PackageModule
	{
	public:
		TextModule(Package* pkg) : PackageModule(pkg) {};

		bool Export(const Entry&, const std::wstring&, bool force = false);
		void SetupStringHashes(const Entry&);
	public:
		static inline std::unordered_map<uint32_t, std::wstring> string_hmap;
	};

	class BinaryModule : PackageModule
	{
	public:
		BinaryModule(Package* pkg) : PackageModule(pkg) {};

		bool Export(const Entry&, const std::wstring&, bool force = false);
	public:
	};

	class TextureModule : PackageModule
	{
	public:
		TextureModule(Package* pkg) : PackageModule(pkg) {};

		bool Export(const Entry&, const std::wstring&, bool force = false);
	public:
	};

	class InvestmentModule : PackageModule
	{
	public:
		InvestmentModule(Package* pkg) : PackageModule(pkg) {};

		bool Export(const Entry&, const std::wstring&, bool force = false);

		void SetupIndexedStrings(const Entry&);
		void SetupIndexedIcons(const Entry&);
		void SetupIndexedItems(const Entry&);

		static FileReference64<D2Class_EF998080>* GetStringContainerByIndex(uint32_t index)
		{
			if (index >= indexed_strings.size()) return nullptr;
			return &indexed_strings[index];
		}

		static FileReference<D2Class_B83E8080>* GetIconContainerByIndex(uint32_t index)
		{
			if (index >= indexed_icons.size()) return nullptr;
			return &indexed_icons[index];
		}

		static FileReference<D2Class_9F548080>* GetItemContainerByHash(uint32_t hash)
		{
			if (indexed_items.find(hash) == indexed_items.end()) return nullptr;
			return &indexed_items[hash];
		}
	public:
		static inline std::vector<FileReference<D2Class_B83E8080>> indexed_icons;
		static inline std::vector<FileReference64<D2Class_EF998080>> indexed_strings;
		static inline std::unordered_map<uint32_t, FileReference<D2Class_9F548080>> indexed_items;
	};

	class ActivityModule : PackageModule
	{
	public:
		ActivityModule(Package* pkg) : PackageModule(pkg) {};

		bool Export(const Entry&, const std::wstring&, bool force = false);


	};

	AudioModule mAudio;
	TextModule mText;
	BinaryModule mBinary;
	TextureModule mTexture;
	InvestmentModule mInvestment;
	ActivityModule mActivity;

public:
	static inline std::unordered_map<uint64_t, HashContainer> hashtag_hmap;
	static inline std::unordered_map<uint64_t, uint64_t> pkg_ltstptch_hmap; // package latest patch
	static inline std::unordered_map<uint64_t, Package*> package_hmap;

	uint8_t nonce[12] = { 0x84, 0xEA, 0x11, 0xC0, 0xAC, 0xAB, 0xFA, 0x20, 0x33, 0x11, 0x26, 0x99 };
};

#endif