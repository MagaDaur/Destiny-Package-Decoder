#pragma once
#include "package.h"
#include "model_structs.h"
#include <fbxsdk.h>

class VertexBuffer
{
public:
	VertexBuffer(const Entry&);
	~VertexBuffer();


private:
	unsigned char* buffer_raw_data;
	unsigned char* header_raw_data;

	__vertex_header* header;
};

class IndexBuffer
{
public:
	IndexBuffer(const Entry&);
	~IndexBuffer();

	std::vector<VectorInt3> Get(unsigned, int, int);
private:
	unsigned char* buffer_raw_data;
	unsigned char* header_raw_data;

	__index_header* header;
};

class Model
{
public:
	Model(const Entry&);
	~Model();

	bool SetupMesh();

	FbxMesh* CreateMeshFromPart(unsigned);

private:

	unsigned char* info_raw_data;
	Destiny_EntityModel* model_info;

	FbxManager* manager;
	FbxScene* scene;

	std::vector<Destiny_Part> part_table;
};

class ModelProcessor
{
public:
	static bool ExportModelToFile(const std::vector<size_t>&, const std::string&);
};