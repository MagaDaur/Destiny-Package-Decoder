#include "Models.h"
#include "helpers.h"

VertexBuffer::VertexBuffer(const Entry& header_entry)
{
	auto& entry_table = g_pPackage->GetEntryTable();

	header_raw_data = new (unsigned char[header_entry.GetFileSize()]);
	g_pPackage->ExtractEntryToMemory(header_entry, header_raw_data);

	header = (__vertex_header*)header_raw_data;

	auto& buffer_entry = entry_table[header_entry.GetRefID()];

	buffer_raw_data = new (unsigned char[buffer_entry.GetFileSize()]);
	g_pPackage->ExtractEntryToMemory(buffer_entry, buffer_raw_data);
}

VertexBuffer::~VertexBuffer()
{
	delete[] header_raw_data;
	delete[] buffer_raw_data;

	header_raw_data = nullptr;
	buffer_raw_data = nullptr;
	header = nullptr;
}

IndexBuffer::IndexBuffer(const Entry& header_entry)
{
	auto& entry_table = g_pPackage->GetEntryTable();

	header_raw_data = new (unsigned char[header_entry.GetFileSize()]);
	g_pPackage->ExtractEntryToMemory(header_entry, header_raw_data);

	header = (__index_header*)header_raw_data;

	auto& buffer_entry = entry_table[header_entry.GetRefID()];

	buffer_raw_data = new (unsigned char[buffer_entry.GetFileSize()]);
	g_pPackage->ExtractEntryToMemory(buffer_entry, buffer_raw_data);
}

std::vector<VectorInt3> IndexBuffer::Get(unsigned offset, int count, int type)
{
	unsigned stride = (header->is_uint32) ? 4 : 2;

	unsigned char* raw_data_offset = buffer_raw_data + stride * offset;
	unsigned vertex_count = 0;

	std::vector<VectorInt3> ret;

	for (int i = 0; i < count;)
	{
		int x = 0, y = 0, z = 0;

		memcpy(&x, raw_data_offset + stride * i, stride);
		memcpy(&y, raw_data_offset + stride * (i + 1), stride);
		memcpy(&z, raw_data_offset + stride * (i + 2), stride);

		if (x == 0xFFFF || x == 0xFFFFFFFF)
		{
			vertex_count = 0;
			i++;
			continue;
		}

		if (y == 0xFFFF || y == 0xFFFFFFFF)
		{
			vertex_count = 0;
			i += 2;
			continue;
		}

		if (z == 0xFFFF || z == 0xFFFFFFFF)
		{
			vertex_count = 0;
			i += 3;
			continue;
		}

		if (type == 3)
		{
			ret.push_back(VectorInt3(x, y, z));
			i += 3;
		}
		else if (type == 5)
		{
			if (vertex_count % 2 == 0)
				ret.push_back(VectorInt3(x, y, z));
			else
				ret.push_back(VectorInt3(y, z, x));

			vertex_count++;
			i++;
		}
	}

	return ret;
}

IndexBuffer::~IndexBuffer()
{
	delete[] header_raw_data;
	delete[] buffer_raw_data;

	header_raw_data = nullptr;
	buffer_raw_data = nullptr;
	header = nullptr;
}

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


	return true;
}

FbxMesh* Model::CreateMeshFromPart(unsigned part_index)
{
	FbxMesh* mesh = FbxMesh::Create(manager, std::to_string(part_index).c_str());
	

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
		auto file_size = entry.GetFileSize();

		raw_file_data = new (unsigned char[file_size]);

		if (!g_pPackage->ExtractEntryToMemory(entry, raw_file_data))
		{
			delete[] raw_file_data;
			continue;
		}


		if (entry.A == 0x80806F07)
		{

			Destiny_EntityModel* model_info = (Destiny_EntityModel*)raw_file_data;
			uint64_t seek = 0x18 + model_info->mesh_list_offset + sizeof(__b89f8080);
			
			for (int i = 0; i < model_info->mesh_list_count; i++)
			{
				Destiny_Mesh* mesh = (Destiny_Mesh*)(raw_file_data + seek);

				Entry* vertex_buffer_entry = g_pPackage->GetEntryByHash(mesh->vb_pos_hash);
				Entry* index_buffer_entry = g_pPackage->GetEntryByHash(mesh->ib_hash);

				if (vertex_buffer_entry && index_buffer_entry)
				{
					Entry vertex_header_entry = entry_table[vertex_buffer_entry->GetRefID()];
					Entry index_header_entry = entry_table[index_buffer_entry->GetRefID()];

					VertexBuffer vertex_buffer(vertex_header_entry);
					IndexBuffer index_buffer(index_header_entry);

					uint64_t part_seek = seek + 0x2C + mesh->parts_list_offset + 8;

					for (int j = 0; j < mesh->parts_list_count; j++)
					{
						Destiny_Part* part = (Destiny_Part*)(raw_file_data + part_seek);

						auto v_vertex_buffer = index_buffer.Get(part->index_offset, part->index_count, part->primitive_type);

						

						part_seek += sizeof(Destiny_Part);
					}
				}

				seek += sizeof(Destiny_Mesh);
			}
		}

		delete[] raw_file_data;
	}

	return true;
}