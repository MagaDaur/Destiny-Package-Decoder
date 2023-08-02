#include "Models.h"
#include "helpers.h"

Model::Model(const Entry& model_entry)
{
	info_raw_data = new (unsigned char[model_entry.GetFileSize()]);
	g_pPackage->ExtractEntryToMemory(model_entry, info_raw_data);

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
	uint64_t seek = 0x18 + model_info->mesh_list_offset + sizeof(Destiny_ArrayInfo);
	
	Destiny_Mesh* mesh = (Destiny_Mesh*)(info_raw_data + seek);

	Entry* vertex_buffer_entry = g_pPackage->GetEntryByHash(mesh->vb_pos_hash);
	Entry* index_buffer_entry = g_pPackage->GetEntryByHash(mesh->ib_hash);

	if (!vertex_buffer_entry || !index_buffer_entry)
		return false;

	Entry vertex_header_entry = entry_table[vertex_buffer_entry->GetRefID()];
	Entry index_header_entry = entry_table[index_buffer_entry->GetRefID()];

	VertexBuffer vertex_buffer(vertex_header_entry);
	IndexBuffer index_buffer(index_header_entry);

	uint64_t part_seek = seek + 0x28 + mesh->parts_list_offset + sizeof(Destiny_ArrayInfo);
	this->part_table.reserve(mesh->parts_list_count);

	for (int j = 0; j < mesh->parts_list_count; j++)
	{
		Destiny_Part* part = (Destiny_Part*)(info_raw_data + part_seek);

		//auto v_vertex_buffer = index_buffer.Get(part->index_offset, part->index_count, part->primitive_type);

		this->part_table.push_back(*part);

		part_seek += sizeof(Destiny_Part);
	}

	return true;
}

bool Model::ProcessPartTable()
{
	for(int i = 0; i < part_table.size(); i++)
	{
		FbxMesh* mesh = CreateMeshFromPart(i);

		// do something with mesh
	}

	return true;
}

FbxMesh* Model::CreateMeshFromPart(unsigned part_index)
{
	FbxMesh* mesh = FbxMesh::Create(manager, std::to_string(part_index).c_str());
	Destiny_Part part = part_table[part_index];



	return mesh;
}

bool ModelProcessor::ExportModelToFile(const std::vector<size_t>& model_table, const std::string& output_folder_path)
{
	unsigned char* raw_file_data;

	auto& entry_table = g_pPackage->GetEntryTable();
	for (auto& entry_index : model_table)
	{
		auto& entry = entry_table[entry_index];
		const std::string file_name = helpers::entry_file_name(entry, entry_index);


		if (entry.A == 0x80806F07)
		{
			Model model(entry);
			if(model.SetupMesh())
			{
				model.ProcessPartTable();
			}		
		}

	}

	return true;
}