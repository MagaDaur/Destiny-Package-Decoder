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

	D2_RelativeOffset<void> phrase_ptr;

	std::vector<D2Class_33978080*> get_data();
};

struct D2Class_2D978080
{
	char pad0[0x28];

	D2_Array<D2Class_30978080> phrase_array;
};

struct D2Class_2F978080
{
	char pad0[0x40];

	D2_RelativeOffset<void> sentance_ptr;
};

struct D2Class_2A978080
{
	char pad0[0x30];

	D2_Array<D2Class_2F978080> unk_array;

	std::vector<D2Class_33978080*> get_data()
	{
		std::vector<D2Class_33978080*> ret{};

		auto arr = unk_array.get();
		for (const auto& elem : arr)
		{
			auto struct_tag = elem->sentance_ptr.get_struct_tag();
			if (struct_tag == 0x8080972D)
			{
				auto temp = (D2Class_2D978080*)elem->sentance_ptr.get();
				for (const auto& elem2 : temp->phrase_array.get())
				{
					auto vec = elem2->get_data();

					ret.insert(ret.end(), vec.begin(), vec.end());
				}
			}
			else if (struct_tag == 0x8080972A)
			{
				auto vec_ptr = (D2Class_2A978080*)elem->sentance_ptr.get();
				auto vec = vec_ptr->get_data();

				ret.insert(ret.end(), vec.begin(), vec.end());
			}
			else if (struct_tag == 0x80809733)
			{
				ret.push_back((D2Class_33978080*)elem->sentance_ptr.get());
			}
		}

		return ret;
	}
};

struct D2Class_29978080
{
	uint32_t unk_hash;
	char pad0[0x4];

	D2_RelativeOffset<void> sentance_ptr;

	std::vector<D2Class_33978080*> get_phrase_array()
	{
		std::vector<D2Class_33978080*> ret;
		auto struct_tag = sentance_ptr.get_struct_tag();

		if (struct_tag == 0x8080972D)
		{
			auto temp = (D2Class_2D978080*)sentance_ptr.get();
			for (const auto& elem : temp->phrase_array.get())
			{
				auto vec = elem->get_data();

				ret.insert(ret.end(), vec.begin(), vec.end());
			}
			return ret;
		}
		else if (struct_tag == 0x8080972A)
		{
			auto sentance_array_ptr = (D2Class_2A978080*)sentance_ptr.get();

			return sentance_array_ptr->get_data();
		}

		return {};
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