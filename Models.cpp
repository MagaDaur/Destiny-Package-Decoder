/*#include "Models.h"
#include "helpers.h"
#include "VertexBuffer.h"
#include "IndexBuffer.h"

Model::Model(const Entry& model_entry)
{
	info_raw_data = new (unsigned char[model_entry.GetFileSize()]);
	g_pPackage->ExtractEntry(model_entry, info_raw_data);

	model_info = (Destiny_EntityModel*)info_raw_data;

	manager = FbxManager::Create();
	scene = FbxScene::Create(manager, "");
}

Model::~Model()
{
	scene->Destroy();
	manager->Destroy();
	delete[] info_raw_data;
}

bool Model::SetupMesh()
{

	return true;
}

bool Model::ProcessPartTable()
{

	return true;
}

FbxMesh* Model::CreateMeshFromPart(unsigned part_index)
{
	FbxMesh* mesh = FbxMesh::Create(manager, std::to_string(part_index).c_str());

	return mesh;
}

bool ModelProcessor::ExportModelToFile(const std::vector<size_t>& model_table, const std::string& output_folder_path)
{

	return true;
}*/