# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Firestore
      module Admin
        module V1
          # A request to list the Firestore Databases in all locations for a project.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. A parent name of the form
          #     `projects/{project_id}`
          class ListDatabasesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The list of databases for a project.
          # @!attribute [rw] databases
          #   @return [::Array<::Google::Cloud::Firestore::Admin::V1::Database>]
          #     The databases in the project.
          class ListDatabasesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#get_database FirestoreAdmin.GetDatabase}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. A name of the form
          #     `projects/{project_id}/databases/{database_id}`
          class GetDatabaseRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#update_database FirestoreAdmin.UpdateDatabase}.
          # @!attribute [rw] database
          #   @return [::Google::Cloud::Firestore::Admin::V1::Database]
          #     Required. The database to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     The list of fields to be updated.
          class UpdateDatabaseRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata related to the update database operation.
          class UpdateDatabaseMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#create_index FirestoreAdmin.CreateIndex}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. A parent name of the form
          #     `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
          # @!attribute [rw] index
          #   @return [::Google::Cloud::Firestore::Admin::V1::Index]
          #     Required. The composite index to create.
          class CreateIndexRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#list_indexes FirestoreAdmin.ListIndexes}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. A parent name of the form
          #     `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
          # @!attribute [rw] filter
          #   @return [::String]
          #     The filter to apply to list results.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The number of results to return.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     A page token, returned from a previous call to
          #     {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#list_indexes FirestoreAdmin.ListIndexes}, that may be used to get the next
          #     page of results.
          class ListIndexesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#list_indexes FirestoreAdmin.ListIndexes}.
          # @!attribute [rw] indexes
          #   @return [::Array<::Google::Cloud::Firestore::Admin::V1::Index>]
          #     The requested indexes.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A page token that may be used to request another page of results. If blank,
          #     this is the last page.
          class ListIndexesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#get_index FirestoreAdmin.GetIndex}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. A name of the form
          #     `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
          class GetIndexRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#delete_index FirestoreAdmin.DeleteIndex}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. A name of the form
          #     `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
          class DeleteIndexRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#update_field FirestoreAdmin.UpdateField}.
          # @!attribute [rw] field
          #   @return [::Google::Cloud::Firestore::Admin::V1::Field]
          #     Required. The field to be updated.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     A mask, relative to the field. If specified, only configuration specified
          #     by this field_mask will be updated in the field.
          class UpdateFieldRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#get_field FirestoreAdmin.GetField}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. A name of the form
          #     `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_id}`
          class GetFieldRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#list_fields FirestoreAdmin.ListFields}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. A parent name of the form
          #     `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
          # @!attribute [rw] filter
          #   @return [::String]
          #     The filter to apply to list results. Currently,
          #     {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#list_fields FirestoreAdmin.ListFields} only supports listing fields
          #     that have been explicitly overridden. To issue this query, call
          #     {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#list_fields FirestoreAdmin.ListFields} with a filter that includes
          #     `indexConfig.usesAncestorConfig:false` .
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The number of results to return.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     A page token, returned from a previous call to
          #     {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#list_fields FirestoreAdmin.ListFields}, that may be used to get the next
          #     page of results.
          class ListFieldsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#list_fields FirestoreAdmin.ListFields}.
          # @!attribute [rw] fields
          #   @return [::Array<::Google::Cloud::Firestore::Admin::V1::Field>]
          #     The requested fields.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A page token that may be used to request another page of results. If blank,
          #     this is the last page.
          class ListFieldsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#export_documents FirestoreAdmin.ExportDocuments}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Database to export. Should be of the form:
          #     `projects/{project_id}/databases/{database_id}`.
          # @!attribute [rw] collection_ids
          #   @return [::Array<::String>]
          #     Which collection ids to export. Unspecified means all collections.
          # @!attribute [rw] output_uri_prefix
          #   @return [::String]
          #     The output URI. Currently only supports Google Cloud Storage URIs of the
          #     form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name
          #     of the Google Cloud Storage bucket and `NAMESPACE_PATH` is an optional
          #     Google Cloud Storage namespace path. When
          #     choosing a name, be sure to consider Google Cloud Storage naming
          #     guidelines: https://cloud.google.com/storage/docs/naming.
          #     If the URI is a bucket (without a namespace path), a prefix will be
          #     generated based on the start time.
          class ExportDocumentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#import_documents FirestoreAdmin.ImportDocuments}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Database to import into. Should be of the form:
          #     `projects/{project_id}/databases/{database_id}`.
          # @!attribute [rw] collection_ids
          #   @return [::Array<::String>]
          #     Which collection ids to import. Unspecified means all collections included
          #     in the import.
          # @!attribute [rw] input_uri_prefix
          #   @return [::String]
          #     Location of the exported files.
          #     This must match the output_uri_prefix of an ExportDocumentsResponse from
          #     an export that has completed successfully.
          #     See:
          #     {::Google::Cloud::Firestore::Admin::V1::ExportDocumentsResponse#output_uri_prefix google.firestore.admin.v1.ExportDocumentsResponse.output_uri_prefix}.
          class ImportDocumentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end

