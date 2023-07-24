#pragma once
#include "package.h"
#include "structures.h"
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
	Model(__076f8080*);
	~Model();

	bool SetupMesh();
private:
	__076f8080* model_header;

	FbxManager* manager;
	FbxScene* scene;
};

class ModelProcessor
{
public:
	static bool ExportModelToFile(const std::vector<size_t>&, const std::string&);
};