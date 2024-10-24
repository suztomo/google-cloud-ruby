# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/documentai/v1beta3/document_service.proto for package 'Google.Cloud.DocumentAI.V1beta3'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/documentai/v1beta3/document_service_pb'

module Google
  module Cloud
    module DocumentAI
      module V1beta3
        module DocumentService
          # Service to call Cloud DocumentAI to manage document collection (dataset).
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.documentai.v1beta3.DocumentService'

            # Updates metadata associated with a dataset.
            # Note that this method requires the
            # `documentai.googleapis.com/datasets.update` permission on the project,
            # which is highly privileged. A user or service account with this permission
            # can create new processors that can interact with any gcs bucket in your
            # project.
            rpc :UpdateDataset, ::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetRequest, ::Google::Longrunning::Operation
            # Import documents into a dataset.
            rpc :ImportDocuments, ::Google::Cloud::DocumentAI::V1beta3::ImportDocumentsRequest, ::Google::Longrunning::Operation
            # Returns relevant fields present in the requested document.
            rpc :GetDocument, ::Google::Cloud::DocumentAI::V1beta3::GetDocumentRequest, ::Google::Cloud::DocumentAI::V1beta3::GetDocumentResponse
            # Returns a list of documents present in the dataset.
            rpc :ListDocuments, ::Google::Cloud::DocumentAI::V1beta3::ListDocumentsRequest, ::Google::Cloud::DocumentAI::V1beta3::ListDocumentsResponse
            # Deletes a set of documents.
            rpc :BatchDeleteDocuments, ::Google::Cloud::DocumentAI::V1beta3::BatchDeleteDocumentsRequest, ::Google::Longrunning::Operation
            # Gets the `DatasetSchema` of a `Dataset`.
            rpc :GetDatasetSchema, ::Google::Cloud::DocumentAI::V1beta3::GetDatasetSchemaRequest, ::Google::Cloud::DocumentAI::V1beta3::DatasetSchema
            # Updates a `DatasetSchema`.
            rpc :UpdateDatasetSchema, ::Google::Cloud::DocumentAI::V1beta3::UpdateDatasetSchemaRequest, ::Google::Cloud::DocumentAI::V1beta3::DatasetSchema
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
