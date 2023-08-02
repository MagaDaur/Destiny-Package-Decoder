#pragma once
#include "package.h"
#include "model_structs.h"
#include <fbxsdk.h>

class Model
{
public:
	Model(const Entry&);
	~Model();

	bool SetupMesh();
	bool ProcessPartTable();

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