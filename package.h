#pragma once

#include "package_header.h"
#include "global_structs.h"
#include <vector>
#include <unordered_map>

#define SETUP_TEXT		(1 << 0)
#define SETUP_AUDIO		(1 << 1)
#define SETUP_TEXTURE	(1 << 2)
#define SETUP_STRUCT	(1 << 3)
#define SETUP_MOVIE		(1 << 4)
#define SETUP_BNK		(1 << 5)
#define SETUP_ALL		0xFFFFFFFF

class Package;

class PackageModule
{
protected:
	PackageModule() : pkg(nullptr) {};
	PackageModule(Package* pkg) : pkg(pkg) {};

	virtual bool Export(const Entry&, const std::string&, bool) = 0;

	Package* pkg;
};

class Package : public PackageHeader
{
public:
	Package(const std::string&);

	bool SetupDataFrames(int flags);
	bool ExportFilesToFolder(const std::string& folder_path);

	std::unique_ptr<uint8_t[]> ExtractEntry(const Entry&, bool);

	static Package* GetPackage(int, int, int);
	template<class T>
	static std::unique_ptr<uint8_t[]> ExtractEntry(const FileReference<T>&, bool force = false);

	static uint64_t MakeHash(uint64_t package_id, int64_t patch_id = -1, uint64_t language_id = 0) {
		if (patch_id == -1) patch_id = pkg_id_lp[package_id];
		return package_id | (patch_id << 16) | (language_id << 32);
	};

protected:
	std::vector<Entry> entry_table;
	std::vector<Block> block_table;

	class AudioModule : PackageModule
	{
	public:
		AudioModule(Package* pkg) : PackageModule(pkg) {};

		virtual bool Export(const Entry&, const std::string&, bool) override;
	private:
	};

	class TextModule : PackageModule
	{
	public:
		TextModule(Package* pkg) : PackageModule(pkg) {};

		virtual bool Export(const Entry&, const std::string&, bool) override;
	private:
		static inline std::unordered_map<uint32_t, std::u8string> string_hmap;
	};

	class BinaryModule : PackageModule
	{
	public:
		BinaryModule(Package* pkg) : PackageModule(pkg) {};

		virtual bool Export(const Entry&, const std::string&, bool) override;
	private:
	};

	class TextureModule : PackageModule
	{
	public:
		TextureModule(Package* pkg) : PackageModule(pkg) {};

		virtual bool Export(const Entry&, const std::string&, bool) override;
	private:
	};

private:
	AudioModule mAudio;
	TextModule mText;
	BinaryModule mBinary;
	TextureModule mTexture;

	static inline std::unordered_map<uint64_t, uint64_t> pkg_id_lp;
	static inline std::unordered_map<uint64_t, Package> package_hmap;
	static inline std::unordered_map<uint64_t, HashContainer> hashtag_hmap;

	uint8_t nonce[12] = { 0x84, 0xEA, 0x11, 0xC0, 0xAC, 0xAB, 0xFA, 0x20, 0x33, 0x11, 0x26, 0x99 };
};