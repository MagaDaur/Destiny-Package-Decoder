#include "Textures.h"
#include "helpers.h"

uint MakePixelFormatFourCC(char char1, char char2, char char3, char char4)
{
	return (char1) | (char2 << 8) | (char3 << 16) | (char4 << 24);
}

bool SetPixelFormat(DDS_HEADER& header, DXGI_FORMAT format)
{
	switch (format)
	{
	case DXGI_FORMAT_R8G8B8A8_UNORM:
		header.ddspf = A8B8G8R8;
		break;
	case DXGI_FORMAT_R16G16_UNORM:
		header.ddspf = G16R16;
		break;
	case DXGI_FORMAT_R8G8_UNORM:
		header.ddspf = A8L8;
		break;
	case DXGI_FORMAT_R16_UNORM:
		header.ddspf = L16;
		break;
	case DXGI_FORMAT_R8_UNORM:
		header.ddspf = L8;
		break;
	case DXGI_FORMAT_A8_UNORM:
		header.ddspf = A8;
		break;
	case DXGI_FORMAT_R8G8_B8G8_UNORM:
		header.ddspf = R8G8B8G8;
		break;
	case DXGI_FORMAT_G8R8_G8B8_UNORM:
		header.ddspf = G8R8G8B8;
		break;
	case DXGI_FORMAT_BC1_UNORM:
		header.ddspf = DXT1;
		break;
	case DXGI_FORMAT_BC2_UNORM:
		header.ddspf = DXT3;
		break;
	case DXGI_FORMAT_BC3_UNORM:
		header.ddspf = DXT5;
		break;
	case DXGI_FORMAT_BC4_UNORM:
		header.ddspf = BC4UNORM;
		break;
	case DXGI_FORMAT_BC4_SNORM:
		header.ddspf = BC4SNORM;
		break;
	case DXGI_FORMAT_BC5_UNORM:
		header.ddspf = BC5UNORM;
		break;
	case DXGI_FORMAT_BC5_SNORM:
		header.ddspf = BC5SNORM;
		break;
	case DXGI_FORMAT_B5G6R5_UNORM:
		header.ddspf = R5G6B5;
		break;
	case DXGI_FORMAT_B5G5R5A1_UNORM:
		header.ddspf = A1R5G5B5;
		break;
	case DXGI_FORMAT_R8G8_SNORM:
		header.ddspf = V8U8;
		break;
	case DXGI_FORMAT_R8G8B8A8_SNORM:
		header.ddspf = Q8W8V8U8;
		break;
	case DXGI_FORMAT_R16G16_SNORM:
		header.ddspf = V16U16;
		break;
	case DXGI_FORMAT_B8G8R8A8_UNORM:
		header.ddspf = A8R8G8B8;
		break;
	case DXGI_FORMAT_B8G8R8X8_UNORM:
		header.ddspf = X8R8G8B8;
		break;
	case DXGI_FORMAT_B4G4R4A4_UNORM:
		header.ddspf = A4R4G4B4;
		break;
	case DXGI_FORMAT_YUY2:
		header.ddspf = YUY2;
		break;
	case DXGI_FORMAT_R32G32B32A32_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 116;
		break;
	case DXGI_FORMAT_R16G16B16A16_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 113;
		break;
	case DXGI_FORMAT_R16G16B16A16_UNORM:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 36;
		break;
	case DXGI_FORMAT_R16G16B16A16_SNORM:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 110;
		break;
	case DXGI_FORMAT_R32G32_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 115;
		break;
	case DXGI_FORMAT_R16G16_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 112;
		break;
	case DXGI_FORMAT_R32_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 114;
		break;
	case DXGI_FORMAT_R16_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 111;
		break;
	default:
		header.ddspf = DX10;
		return true;
		break;
	}
	return false;
}

bool TextureProcessor::GenerateDDSHeader(const TextureHeader* texture_header, unsigned char* out_buffer, unsigned int& bytes_written)
{
	DDS_HEADER header = { };

	header.width = texture_header->width;
	header.height = texture_header->height;
	header.depth = 1;

	header.size = sizeof(DDS_HEADER);
	header.flags = DDS_HEADER_FLAGS_TEXTURE | DDS_HEADER_FLAGS_MIPMAP;
	header.caps = DDS_SURFACE_FLAGS_TEXTURE;
	header.mipMapCount = 1;

	DDS_HEADER_DXT10 header10 = { };

	header10.dxgiFormat = (DXGI_FORMAT)texture_header->format;
	header10.arraySize = texture_header->array_size;
	header10.resourceDimension = 3;
	header10.miscFlag = 0;
	header10.reserved = 0;

	if (header10.arraySize % 6 == 0)
	{
		header10.miscFlag |= TEX_MISC_TEXTURECUBE;
		header10.arraySize /= 6;
	}

	bool is_dx10 = SetPixelFormat(header, header10.dxgiFormat);

	size_t row_pitch = 0, slice_pitch = 0;
	ComputePitch(header10.dxgiFormat, header.width, header.height, row_pitch, slice_pitch);

	if (IsCompressed(header10.dxgiFormat))
	{
		header.flags |= DDS_HEADER_FLAGS_LINEARSIZE;
		header.pitchOrLinearSize = slice_pitch;
	}
	else
	{
		header.flags |= DDS_HEADER_FLAGS_PITCH;
		header.pitchOrLinearSize = row_pitch;
	}

	memcpy(out_buffer, &DDS_MAGIC, 4);
	memcpy(out_buffer + 4, &header, header.size);

	bytes_written = 4 + header.size;

	if (is_dx10)
	{
		memcpy(out_buffer + 4 + header.size, &header10, sizeof(DDS_HEADER_DXT10));
		bytes_written += sizeof(DDS_HEADER_DXT10);
	}

	return true;
}

ScratchImage DecompressImage(const ScratchImage& image, DXGI_FORMAT format)
{
	ScratchImage ret;
	Decompress(image.GetImages(), image.GetImageCount(), image.GetMetadata(), format, ret);
	return ret;
}

ScratchImage RotateImage(const ScratchImage& sc_image, int image_index, TEX_FR_FLAGS flags)
{
	ScratchImage ret;
	FlipRotate(*sc_image.GetImage(0, image_index, 0), flags, ret);
	return ret;
}

bool TextureProcessor::ExtractTextureToFolder(const std::vector<size_t>& texture_table, const std::string& folder_path)
{
	const std::wstring folder_path_w = std::wstring(folder_path.begin(), folder_path.end());

    auto& entry_table = g_pPackage->GetEntryTable();
    for (auto& entry_index : texture_table)
    {
        auto& header_entry = entry_table[entry_index];
        auto header_file_size = header_entry.GetFileSize();
        auto file_path = folder_path + helpers::entry_file_name(header_entry, entry_index) + ".dds";
		auto file_path_w = std::wstring(file_path.begin(), file_path.end());

        unsigned char* header_raw_data = new (unsigned char[header_file_size]);
        if (!g_pPackage->ExtractEntry(header_entry, header_raw_data))
        {
            delete[] header_raw_data;
            continue;
        }

        auto texture_header = *(TextureHeader*)header_raw_data;
		delete[] header_raw_data;

		if (texture_header.depth != 1)
			continue;

		unsigned int writted_bytes = 0;
        unsigned int texture_file_size = DDS_HEADER_SIZE + texture_header.size;
        unsigned char* raw_texture_data = new (unsigned char[texture_file_size]);

		GenerateDDSHeader(&texture_header, raw_texture_data, writted_bytes);

		const Entry* texture_raw_entry = &entry_table[header_entry.GetRefID()];
		unsigned int buffer_offset = 0;

		if (g_pPackage->ExtractEntryByReference(texture_header.buffer_ref, raw_texture_data + writted_bytes))
			buffer_offset = (texture_header.size - texture_raw_entry->GetFileSize());

		if (!g_pPackage->ExtractEntry(*texture_raw_entry, raw_texture_data + writted_bytes + buffer_offset, true))
		{
			delete[] raw_texture_data;
			continue;
		}

		auto format = (DXGI_FORMAT)texture_header.format;
		ScratchImage image;
		TexMetadata info;
		
		texture_file_size = writted_bytes + texture_header.size;

		LoadFromDDSMemory(raw_texture_data, texture_file_size, DDS_FLAGS_NONE, &info, image);
		delete[] raw_texture_data;

		if (IsCompressed(format))
			image = DecompressImage(image, DXGI_FORMAT_R8G8B8A8_UNORM_SRGB);

		SaveToDDSFile(image.GetImages(), image.GetImageCount(), image.GetMetadata(), DDS_FLAGS_NONE, file_path_w.c_str());

		if (texture_header.array_size == 1)
		{
			const std::wstring texconv_command = L"external\\texconv\\texconv.exe " + file_path_w + L" -ft PNG -f R8G8B8A8_UNORM_SRGB -y -o " + folder_path_w;
			_wsystem(texconv_command.c_str());
			DeleteFileA(file_path.c_str());
		}

    }

    return true;
}