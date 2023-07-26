#pragma once

#include "global_structs.h"

struct Vector2
{
	Vector2() : x(0.f), y(0.f) {}

	Vector2(float x, float y) : x(x), y(y) {}
	Vector2(short x, short y)
	{
		this->x = x / 32767.f;
		this->y = y / 32767.f;
	}

	float x, y;
};

struct Vector3 : Vector2
{
	Vector3() : Vector2(0.f, 0.f), z(0.f) {}
	Vector3(float x, float y, float z) : Vector2(x, y), z(z) {}
	Vector3(short x, short y, short z) : Vector2(x, y)
	{
		this->z = z / 32767.f;
	}

	float z;
};

struct VectorInt3
{
public:
	VectorInt3(int x, int y, int z) : x(x), y(y), z(z) {};

	int x, y, z;
};

struct Vector4 : Vector3
{
	Vector4() : Vector3(0.f, 0.f, 0.f), w(0) {}
	Vector4(float x, float y, float z, float w) : Vector3(x, y, z), w(w) {}

	float w;
};

struct Destiny_EntityModel // entity model info
{
	uint64_t file_size; // 0x0
	uint64_t zeros; // 0x8
	uint64_t mesh_list_count; // 0x10
	uint64_t mesh_list_offset; // 0x18
	Vector4 unk1; // 0x20
	uint64_t unk2; // 0x30
	uint64_t unk3; // 0x38
	uint64_t unk4; // 0x40
	uint64_t unk5; // 0x48
	Vector4 model_scale; // 0x50
	Vector4 model_translation; // 0x60
	Vector2 texcoord_scale; // 0x70
	Vector2 texcoord_translation; // 0x78
	Vector4 unk6; // 0x80
};

struct Destiny_Mesh // mesh info
{
	//uint32_t unk1; // 0x0
	uint32_t vb_pos_hash; // 0x4
	uint32_t vb_normal_hash; // 0x8
	uint32_t vb_old_hash; // 0xC
	uint32_t unk2; // 0x10
	uint32_t ib_hash; // 0x14
	uint32_t vb_color_hash; // 0x18
	uint32_t vb_sps_hash; // 0x1C
	uint32_t unk3; // 0x20

	uint64_t parts_list_count; // 0x24
	uint64_t parts_list_offset; // 0x2C

	int16_t stage_part_offsets[37]; // 0x34
};

struct Destiny_Part // part info
{
	uint32_t unk1; // 0x0
	uint32_t material_hash; // 0x4
	int16_t variant_shader_index; // 0x8
	int16_t primitive_type; // 0xA
	uint32_t index_offset; // 0xC
	uint32_t index_count; // 0x10
	uint32_t unk2; // 0x14
	int16_t unk3; // 0x18
	int16_t unk4; // 0x1A
	uint32_t flags; // 0x1C
	uint8_t color_index; // 0x20
	uint8_t lod_category; // 0x21
	uint8_t unk5; // 0x22
	uint8_t lod_run; // 0x23
};

struct __index_header
{
	uint8_t unk1;
	bool is_uint32;
	int16_t unk2;
	int32_t unk3;
	uint64_t size;
};

struct __vertex_header
{
	uint32_t size;
	uint16_t stride;
	int16_t type;
};