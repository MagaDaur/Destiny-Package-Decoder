#include "package.h"
#include "texture_structs.h"

constexpr auto DDS_HEADER_SIZE = 4 + sizeof(DDS_HEADER) + sizeof(DDS_HEADER_DXT10);

bool Package::TextureModule::Export(const Entry& entry, const std::wstring& output_folder_path, bool force)
{
	auto texture_header = pkg->ExtractEntry<TextureHeader>(entry, force);
	if (!texture_header || texture_header->array_size != 1 || texture_header->depth != 1 || texture_header->format == 0x22 || texture_header->format == 0xA) return false;

	auto file_name = output_folder_path + Helpers::to_wstring(entry.GenerateName() + ".dds");
	
	auto dds_header_buffer = std::make_unique<uint8_t[]>(DDS_HEADER_SIZE);
	auto dds_header_size = GenerateDDSHeader(texture_header.get(), dds_header_buffer.get());
	const auto dds_texture_size = dds_header_size + texture_header->size;
	auto dds_texture_buffer = std::make_unique<uint8_t[]>(dds_texture_size);

	memcpy(dds_texture_buffer.get(), dds_header_buffer.get(), dds_header_size);

	{
		auto ref_texture_buffer = texture_header->buffer_ref.get_data();

		if (ref_texture_buffer)
		{
			auto ref_entry = texture_header->buffer_ref.get_entry();
			memcpy(dds_texture_buffer.get() + dds_header_size, ref_texture_buffer.get(), ref_entry->file_size);

			if (ref_entry->file_size != texture_header->size)
			{
				auto entry_reference = FileReference<uint8_t>(entry.class_type);
				auto entry_reference_buffer = entry_reference.get_data();

				memcpy(dds_texture_buffer.get() + dds_header_size + ref_entry->file_size, entry_reference_buffer.get(), entry_reference.get_entry()->file_size);
			}
		}
		else
		{
			auto entry_reference = FileReference<uint8_t>(entry.class_type);
			auto entry_reference_buffer = entry_reference.get_data();

			memcpy(dds_texture_buffer.get() + dds_header_size, entry_reference_buffer.get(), entry_reference.get_entry()->file_size);
		}
	}

	ScratchImage image, decomp;
	TexMetadata metadata;

	if (FAILED(LoadFromDDSMemory(dds_texture_buffer.get(), dds_texture_size, DDS_FLAGS_NONE, &metadata, image)))
		return false;

	if (IsCompressed(metadata.format))
	{
		if (FAILED(Decompress(image.GetImages(), image.GetImageCount(), metadata, DXGI_FORMAT_R8G8B8A8_UNORM_SRGB, decomp)))
			return false;
		if (FAILED(SaveToDDSFile(decomp.GetImages(), decomp.GetImageCount(), metadata, DDS_FLAGS_NONE, file_name.c_str())))
			return false;
	}
	else if (FAILED(SaveToDDSFile(image.GetImages(), image.GetImageCount(), metadata, DDS_FLAGS_NONE, file_name.c_str())))
		return false;

	const std::wstring texconv_command = L"external\\texconv\\texconv.exe \"" + file_name + L"\" -ft PNG -srgb -nowic -o \"" + output_folder_path + L"\"";
	
	_wsystem(texconv_command.c_str());

	DeleteFileW(file_name.c_str());

	return true;
}

uint64_t GenerateDDSHeader(const TextureHeader* texture_header, uint8_t* out_buffer)
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
		header.pitchOrLinearSize = (uint32_t)slice_pitch;
	}
	else
	{
		header.flags |= DDS_HEADER_FLAGS_PITCH;
		header.pitchOrLinearSize = (uint32_t)row_pitch;
	}

	uint64_t offset = 0;

	memcpy(out_buffer, &DDS_MAGIC, 4);
	offset += 4;

	memcpy(out_buffer + offset, &header, header.size);
	offset += header.size;

	if (is_dx10)
	{
		memcpy(out_buffer + offset, &header10, sizeof(DDS_HEADER_DXT10));
		offset += sizeof(DDS_HEADER_DXT10);
	}

	return offset;
}

const uint32_t MakePixelFormatFourCC(char char1, char char2, char char3, char char4)
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