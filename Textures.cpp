#include "Textures.h"

const unsigned DDS_HEADER_SIZE = sizeof(DDS_HEADER) + sizeof(DDS_HEADER_DXT10) + 4;

bool TextureProcessor::GenerateDDSHeader(const TextureHeader* texture_header, unsigned char* out_buffer)
{
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
	memcpy(out_buffer + 4 + header.size, &header10, sizeof(DDS_HEADER_DXT10));

	return true;
}

ScratchImage DecompressScratchImage(const ScratchImage& image, DXGI_FORMAT format)
{
	ScratchImage ret;
	Decompress(image.GetImages(), image.GetImageCount(), image.GetMetadata(), format, ret);
	return ret;
}

ScratchImage ConvertScratchImage(const ScratchImage& image, DXGI_FORMAT format);

bool TextureProcessor::ExtractImageToFile(const Entry& entry, const TextureHeader* texture_header, const std::string& package_path, const std::wstring& output_file_path)
{
	unsigned texture_file_buffer_size = DDS_HEADER_SIZE + entry.GetFileSize();
	unsigned char* texture_file_buffer = new (unsigned char[texture_file_buffer_size]);

	GenerateDDSHeader(texture_header, texture_file_buffer);
	if (!g_pPackage->ExtractEntryToMemory(entry, package_path, texture_file_buffer + DDS_HEADER_SIZE))
	{
		delete[] texture_file_buffer;
		return false;
	}

	DXGI_FORMAT format = (DXGI_FORMAT)texture_header->format;
	ScratchImage image;
	TexMetadata info;

	HRESULT hr = LoadFromDDSMemory(texture_file_buffer, texture_file_buffer_size, DDS_FLAGS_NONE, &info, image);
	delete[] texture_file_buffer;

	if (IsCompressed(format))
		image = DecompressScratchImage(image, DXGI_FORMAT_R8G8B8A8_UNORM_SRGB);

	hr = SaveToDDSFile(image.GetImages(), image.GetImageCount(), image.GetMetadata(), DDS_FLAGS_NONE, output_file_path.c_str());

	return FAILED(hr);
}

bool TextureProcessor::ExtractFromEntryToMemory(const Entry& entry, const TextureHeader* texture_header, const std::string& package_path, unsigned char* out_buffer)
{
	return false;
}

uint MakePixelFormatFourCC(char char1, char char2, char char3, char char4)
{
	return (char1) | (char2 << 8) | (char3 << 16) | (char4 << 24);
}