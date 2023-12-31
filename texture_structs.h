#pragma once

#include <DirectXTex.h>

using namespace DirectX;

const uint32_t DDS_MAGIC = 0x20534444;

struct TextureHeader
{
	uint32_t size; // 0x0
	uint32_t format; // 0x4
	uint8_t pad1[0x1A]; // 0x8
	uint16_t width; // 0x22
	uint16_t height; // 0x24
	uint16_t depth; // 0x26
	uint16_t array_size; // 0x28
	uint16_t miplevels; // 0x2A
	uint8_t pad2[0x10]; // 0x2C
	FileReference<uint8_t> buffer_ref;
};

struct DDS_PIXELFORMAT
{
	uint32_t  size;
	uint32_t  flags;
	uint32_t  fourCC;
	uint32_t  RGBBitCount;
	uint32_t  RBitMask;
	uint32_t  GBitMask;
	uint32_t  BBitMask;
	uint32_t  ABitMask;
};

typedef struct
{
	uint32_t          size;
	uint32_t          flags;
	uint32_t          height;
	uint32_t          width;
	uint32_t          pitchOrLinearSize;
	uint32_t          depth; // only if DDS_HEADER_FLAGS_VOLUME is set in flags
	uint32_t          mipMapCount;
	uint32_t          reserved1[11];
	DDS_PIXELFORMAT ddspf;
	uint32_t          caps;
	uint32_t          caps2;
	uint32_t          caps3;
	uint32_t          caps4;
	uint32_t          reserved2;
} DDS_HEADER;

typedef struct
{
	DXGI_FORMAT dxgiFormat;
	uint32_t      resourceDimension;
	uint32_t      miscFlag; // See D3D11_RESOURCE_MISC_FLAG
	uint32_t      arraySize;
	uint32_t      reserved;
} DDS_HEADER_DXT10;

uint64_t GenerateDDSHeader(const TextureHeader*, uint8_t*);
const uint32_t MakePixelFormatFourCC(char, char, char, char);
bool SetPixelFormat(DDS_HEADER&, DXGI_FORMAT);

const uint32_t DDSFOURCC = 0x00000004;  // DDPFFOURCC
const uint32_t DDSRGB = 0x00000040;  // DDPFRGB
const uint32_t DDSRGBA = 0x00000041;  // DDPFRGB | DDPFALPHAPIXELS
const uint32_t DDSLUMINANCE = 0x00020000;  // DDPFLUMINANCE
const uint32_t DDSLUMINANCEA = 0x00020001;  // DDPFLUMINANCE | DDPFALPHAPIXELS
const uint32_t DDSALPHAPIXELS = 0x00000001;  // DDPFALPHAPIXELS
const uint32_t DDSALPHA = 0x00000002;  // DDPFALPHA
const uint32_t DDSPAL8 = 0x00000020;  // DDPFPALETTEINDEXED8
const uint32_t DDSPAL8A = 0x00000021;  // DDPFPALETTEINDEXED8 | DDPFALPHAPIXELS
const uint32_t DDSBUMPDUDV = 0x00080000;  // DDPFBUMPDUDV

const DDS_PIXELFORMAT DXT1 = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('D', 'X', 'T', '1'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT DXT2 = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('D', 'X', 'T', '2'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT DXT3 = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('D', 'X', 'T', '3'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT DXT4 = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('D', 'X', 'T', '4'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT DXT5 = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('D', 'X', 'T', '5'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT BC4UNORM = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('B', 'C', '4', 'U'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT BC4SNORM = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('B', 'C', '4', 'S'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT BC5UNORM = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('B', 'C', '5', 'U'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT BC5SNORM = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('B', 'C', '5', 'S'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT R8G8B8G8 = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('R', 'G', 'B', 'G'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT G8R8G8B8 = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('G', 'R', 'G', 'B'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT YUY2 = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('Y', 'U', 'Y', '2'), 0, 0, 0, 0, 0 };
const DDS_PIXELFORMAT A8R8G8B8 = { sizeof(DDS_PIXELFORMAT), DDSRGBA, 0, 32, 0x00ff0000, 0x0000ff00, 0x000000ff, 0xff000000 };
const DDS_PIXELFORMAT X8R8G8B8 = { sizeof(DDS_PIXELFORMAT), DDSRGB, 0, 32, 0x00ff0000, 0x0000ff00, 0x000000ff, 0x00000000 };
const DDS_PIXELFORMAT A8B8G8R8 = { sizeof(DDS_PIXELFORMAT), DDSRGBA, 0, 32, 0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000 };
const DDS_PIXELFORMAT X8B8G8R8 = { sizeof(DDS_PIXELFORMAT), DDSRGB, 0, 32, 0x000000ff, 0x0000ff00, 0x00ff0000, 0x00000000 };
const DDS_PIXELFORMAT G16R16 = { sizeof(DDS_PIXELFORMAT), DDSRGB, 0, 32, 0x0000ffff, 0xffff0000, 0x00000000, 0x00000000 };
const DDS_PIXELFORMAT R5G6B5 = { sizeof(DDS_PIXELFORMAT), DDSRGB, 0, 16, 0x0000f800, 0x000007e0, 0x0000001f, 0x00000000 };
const DDS_PIXELFORMAT A1R5G5B5 = { sizeof(DDS_PIXELFORMAT), DDSRGBA, 0, 16, 0x00007c00, 0x000003e0, 0x0000001f, 0x00008000 };
const DDS_PIXELFORMAT A4R4G4B4 = { sizeof(DDS_PIXELFORMAT), DDSRGBA, 0, 16, 0x00000f00, 0x000000f0, 0x0000000f, 0x0000f000 };
const DDS_PIXELFORMAT R8G8B8 = { sizeof(DDS_PIXELFORMAT), DDSRGB, 0, 24, 0x00ff0000, 0x0000ff00, 0x000000ff, 0x00000000 };
const DDS_PIXELFORMAT L8 = { sizeof(DDS_PIXELFORMAT), DDSLUMINANCE, 0, 8, 0xff, 0x00, 0x00, 0x00 };
const DDS_PIXELFORMAT L16 = { sizeof(DDS_PIXELFORMAT), DDSLUMINANCE, 0, 16, 0xffff, 0x0000, 0x0000, 0x0000 };
const DDS_PIXELFORMAT A8L8 = { sizeof(DDS_PIXELFORMAT), DDSLUMINANCEA, 0, 16, 0x00ff, 0x0000, 0x0000, 0xff00 };
const DDS_PIXELFORMAT A8L8ALT = { sizeof(DDS_PIXELFORMAT), DDSLUMINANCEA, 0, 8, 0x00ff, 0x0000, 0x0000, 0xff00 };
const DDS_PIXELFORMAT A8 = { sizeof(DDS_PIXELFORMAT), DDSALPHA, 0, 8, 0x00, 0x00, 0x00, 0xff };
const DDS_PIXELFORMAT V8U8 = { sizeof(DDS_PIXELFORMAT), DDSBUMPDUDV, 0, 16, 0x00ff, 0xff00, 0x0000, 0x0000 };
const DDS_PIXELFORMAT Q8W8V8U8 = { sizeof(DDS_PIXELFORMAT), DDSBUMPDUDV, 0, 32, 0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000 };
const DDS_PIXELFORMAT V16U16 = { sizeof(DDS_PIXELFORMAT), DDSBUMPDUDV, 0, 32, 0x0000ffff, 0xffff0000, 0x00000000, 0x00000000 };
const DDS_PIXELFORMAT DX10 = { sizeof(DDS_PIXELFORMAT), DDSFOURCC, MakePixelFormatFourCC('D', 'X', '1', '0'), 0, 0, 0, 0, 0 };

#define DDS_HEADER_FLAGS_TEXTURE        0x00001007  // DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH | DDSD_PIXELFORMAT
#define DDS_HEADER_FLAGS_MIPMAP         0x00020000  // DDSD_MIPMAPCOUNT
#define DDS_HEADER_FLAGS_VOLUME         0x00800000  // DDSD_DEPTH
#define DDS_HEADER_FLAGS_PITCH          0x00000008  // DDSD_PITCH
#define DDS_HEADER_FLAGS_LINEARSIZE     0x00080000  // DDSD_LINEARSIZE

#define DDS_HEIGHT 0x00000002 // DDSD_HEIGHT
#define DDS_WIDTH  0x00000004 // DDSD_WIDTH

#define DDS_SURFACE_FLAGS_TEXTURE 0x00001000 // DDSCAPS_TEXTURE
#define DDS_SURFACE_FLAGS_MIPMAP  0x00400008 // DDSCAPS_COMPLEX | DDSCAPS_MIPMAP
#define DDS_SURFACE_FLAGS_CUBEMAP 0x00000008 // DDSCAPS_COMPLEX

#define DDS_CUBEMAP_POSITIVEX 0x00000600 // DDSCAPS2_CUBEMAP | DDSCAPS2_CUBEMAP_POSITIVEX
#define DDS_CUBEMAP_NEGATIVEX 0x00000a00 // DDSCAPS2_CUBEMAP | DDSCAPS2_CUBEMAP_NEGATIVEX
#define DDS_CUBEMAP_POSITIVEY 0x00001200 // DDSCAPS2_CUBEMAP | DDSCAPS2_CUBEMAP_POSITIVEY
#define DDS_CUBEMAP_NEGATIVEY 0x00002200 // DDSCAPS2_CUBEMAP | DDSCAPS2_CUBEMAP_NEGATIVEY
#define DDS_CUBEMAP_POSITIVEZ 0x00004200 // DDSCAPS2_CUBEMAP | DDSCAPS2_CUBEMAP_POSITIVEZ
#define DDS_CUBEMAP_NEGATIVEZ 0x00008200 // DDSCAPS2_CUBEMAP | DDSCAPS2_CUBEMAP_NEGATIVEZ

#define DDS_CUBEMAP_ALLFACES (DDS_CUBEMAP_POSITIVEX | DDS_CUBEMAP_NEGATIVEX |\
                              DDS_CUBEMAP_POSITIVEY | DDS_CUBEMAP_NEGATIVEY |\
                              DDS_CUBEMAP_POSITIVEZ | DDS_CUBEMAP_NEGATIVEZ)

#define DDS_CUBEMAP 0x00000200 // DDSCAPS2_CUBEMAP

#define DDS_FLAGS_VOLUME 0x00200000 // DDSCAPS2_VOLUME