#include "Textures.h"
#include "helpers.h"

uint MakePixelFormatFourCC(char char1, char char2, char char3, char char4)
{
	return (char1) | (char2 << 8) | (char3 << 16) | (char4 << 24);
}

bool TextureProcessor::GenerateDDSHeader(const TextureHeader* texture_header, unsigned char* out_buffer, unsigned int& bytes_written)
{
	bool is_dx10 = false;

	DDS_HEADER header = { };

	header.width = texture_header->width;
	header.height = texture_header->height;
	header.depth = texture_header->depth;

	header.size = sizeof(DDS_HEADER);
	header.flags = DDS_HEADER_FLAGS_TEXTURE | DDS_HEADER_FLAGS_MIPMAP;
	header.caps = DDS_SURFACE_FLAGS_TEXTURE;
	header.mipMapCount = 1;

	DDS_HEADER_DXT10 header10 = { };

	header10.dxgiFormat = (DXGI_FORMAT)texture_header->format;
	header10.resourceDimension = 3;
	header10.arraySize = texture_header->array_size;
	header10.miscFlag = 0;

	switch (header10.dxgiFormat)
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
		// Legacy D3DX formats using D3DFMT enum value as FourCC
	case DXGI_FORMAT_R32G32B32A32_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 116;  // D3DFMTA32B32G32R32F
		break;
	case DXGI_FORMAT_R16G16B16A16_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 113;  // D3DFMTA16B16G16R16F
		break;
	case DXGI_FORMAT_R16G16B16A16_UNORM:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 36;  // D3DFMTA16B16G16R16
		break;
	case DXGI_FORMAT_R16G16B16A16_SNORM:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 110;  // D3DFMTQ16W16V16U16
		break;
	case DXGI_FORMAT_R32G32_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 115;  // D3DFMTG32R32F
		break;
	case DXGI_FORMAT_R16G16_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 112;  // D3DFMTG16R16F
		break;
	case DXGI_FORMAT_R32_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 114;  // D3DFMTR32F
		break;
	case DXGI_FORMAT_R16_FLOAT:
		header.ddspf.flags = DDSFOURCC; header.ddspf.fourCC = 111;  // D3DFMTR16F
		break;
	default:
		header.ddspf = DX10;
		is_dx10 = true;
		break;
	}

	size_t row_pitch = 0, slice_pitch = 0;
	ComputePitch(header10.dxgiFormat, texture_header->width, texture_header->height, row_pitch, slice_pitch);

	if (IsCompressed(header10.dxgiFormat))
	{
		header.flags |= DDS_HEADER_FLAGS_LINEARSIZE;
		header.pitchOrLinearSize = (uint32)slice_pitch;
	}
	else
	{
		header.flags |= DDS_HEADER_FLAGS_PITCH;
		header.pitchOrLinearSize = (uint32)row_pitch;
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

ScratchImage DecompressScratchImage(const ScratchImage& image, DXGI_FORMAT format)
{
	ScratchImage ret;
	Decompress(image.GetImages(), image.GetImageCount(), image.GetMetadata(), format, ret);
	return ret;
}

bool TextureProcessor::ExtractTextureToFolder(const std::vector<size_t>& texture_table, const std::string& folder_path)
{
    auto& entry_table = g_pPackage->GetEntryTable();
    for (auto& entry_index : texture_table)
    {
        auto& header_entry = entry_table[entry_index];
        auto header_file_size = header_entry.GetFileSize();
        auto file_name = folder_path + helpers::entry_file_name(header_entry, entry_index) + ".dds";
		auto w_file_name = std::wstring(file_name.begin(), file_name.end());

        unsigned char* header_raw_data = new (unsigned char[header_file_size]);
        if (!g_pPackage->ExtractEntryToMemory(header_entry, header_raw_data, true))
        {
            delete[] header_raw_data;
            continue;
        }

        auto* texture_header = (TextureHeader*)header_raw_data;

        auto& raw_data_entry = entry_table[header_entry.GetRefID()];
        auto raw_data_size = raw_data_entry.GetFileSize();

        auto texture_file_size = DDS_HEADER_SIZE + raw_data_size;
        unsigned char* raw_texture_data = new (unsigned char[texture_file_size]);
		unsigned int writted_bytes = 0;

		GenerateDDSHeader(texture_header, raw_texture_data, writted_bytes);
        if (!g_pPackage->ExtractEntryToMemory(raw_data_entry, raw_texture_data + writted_bytes, true))
        {
            delete[] raw_texture_data;
            continue;
        }

		auto format = (DXGI_FORMAT)texture_header->format;
		ScratchImage image;
		TexMetadata info;

		HRESULT hr = LoadFromDDSMemory(raw_texture_data, writted_bytes + raw_data_size, DDS_FLAGS_NONE, &info, image);
		delete[] raw_texture_data;

		if (IsCompressed(format))
			image = DecompressScratchImage(image, DXGI_FORMAT_R8G8B8A8_UNORM_SRGB);

		hr = SaveToDDSFile(image.GetImages(), image.GetImageCount(), image.GetMetadata(), DDS_FLAGS_NONE, w_file_name.c_str());

        delete[] header_raw_data;
    }

    return true;
}