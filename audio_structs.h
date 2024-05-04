#ifndef AUDIO_STRUCTS_H
#define AUDIO_STRUCTS_H

#include "d2class.h"
#include "filereference.h"
#include "activity_structs.h"

struct WAVHeader
{
	uint32_t RIFF{};
	uint32_t ChunkSize{};
	uint32_t WAVE{};
	uint32_t fmt{};

	uint32_t Subchunk1Size{};
	uint16_t AudioFormat{};
	uint16_t NumChannel{};

	uint32_t SampleRate{};
	uint32_t ByteRate{};

	uint16_t BlockAlign{};
	uint16_t BitsPerSample{};

	uint32_t data{};

	uint32_t SubChunk2Size{};

	WAVHeader(const std::wstring&);
};

bool ConcatWavs(const std::wstring&, const std::vector<std::wstring>&, const std::wstring&);

struct D2Class_14008080
{
	FileReference<void> wem_file;
};

struct D2Class_38978080
{
	uint64_t filesize;

	uint32_t unk_hashes0[3];

	FileReference<void> unk_file0;
	FileReference<void> unk_file1;

	char pad0[0x4];

	D2_Array<D2Class_14008080> wems;

	FileReference<void> unk_file2;

	std::vector<std::wstring> ExportWavs(const std::wstring&);
};

struct StringHashRefExt
{
	FileReference<struct D2Class_EF998080> ref;
	char pad0[0xC];
	uint32_t string_hash;
	char pad1[0x4];

	std::wstring get_string();
};

struct D2Class_33978080
{
	char pad0[0x28];

	FileReference64<D2Class_38978080> wem;

	StringHashRefExt subtitle1;

	char pad1[0x18];

	StringHashRefExt subtitle2;

	char pad2[0x18];
};

struct D2Class_30978080
{
	char pad0[0x20];

	D2_RelativeOffset<D2Class_33978080> phrase_ptr;

	D2Class_33978080* get_data()
	{
		if (phrase_ptr.get_struct_tag() != 0x80809733) return nullptr;
		return phrase_ptr.get();
	}
};

struct D2Class_2D978080
{
	char pad0[0x28];

	D2_Array<D2Class_30978080> phrase_array;
};

struct D2Class_29978080
{
	uint32_t unk_hash;
	char pad0[0x4];

	D2_RelativeOffset<D2Class_2D978080> sentance_ptr;

	D2Class_2D978080* get_data()
	{
		if (sentance_ptr.get_struct_tag() != 0x8080972D) return nullptr;
		return sentance_ptr.get();
	}
};

struct D2Class_28978080
{
	uint32_t unk_hash;
	char pad0[0x4];
};

struct D2Class_B8978080
{
	uint64_t filesize;

	D2_Array<D2Class_28978080> unk_array0;
	D2_Array<D2Class_29978080> sentance_array;
};

struct D2Class_FB458080
{
	char pad0[0x8];

	D2_RelativeOffset<const char> event_desciption;

	char pad1[0x10];
};

struct D2Class_F5458080
{
	D2_RelativeOffset<const char> music_path;

	char pad0[0x8];

	FileReference64<D2Class_38978080> music_container;

	StringHash unk_strings0[3];

	char pad1[0x4];

	D2_Array<D2Class_FB458080> events;

	std::vector<std::string> get_events()
	{
		std::vector<std::string> ret; ret.reserve(events.size);
		for (const auto& elem : events.get())
			if(elem->event_desciption.offset)
				ret.push_back(elem->event_desciption.get());
		return ret;
	}
};

struct D2Class_ED458080
{
	D2_RelativeOffset<D2Class_F5458080> unk_ptr0;

	D2Class_F5458080* get_ptr()
	{
		if (unk_ptr0.get_struct_tag() != 0x808045F5) return nullptr;
		return unk_ptr0.get();
	}
};

struct D2Class_EB458080
{
	uint64_t filesize;

	D2_RelativeOffset<const char> music_template_path;

	FileReference<void> unk_file0;

	char pad0[0x14];

	D2_Array<D2Class_ED458080> unk_array0;
};

#endif