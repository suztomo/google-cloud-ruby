# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/documentai/v1beta3/document_processor_service.proto for package 'Google.Cloud.DocumentAI.V1beta3'
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
require 'google/cloud/documentai/v1beta3/document_processor_service_pb'

module Google
  module Cloud
    module DocumentAI
      module V1beta3
        module DocumentProcessorService
          # Service to call Document AI to process documents according to the
          # processor's definition. Processors are built using state-of-the-art Google
          # AI such as natural language, computer vision, and translation to extract
          # structured information from unstructured or semi-structured documents.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.documentai.v1beta3.DocumentProcessorService'

            # Processes a single document.
            rpc :ProcessDocument, ::Google::Cloud::DocumentAI::V1beta3::ProcessRequest, ::Google::Cloud::DocumentAI::V1beta3::ProcessResponse
            # LRO endpoint to batch process many documents. The output is written
            # to Cloud Storage as JSON in the [Document] format.
            rpc :BatchProcessDocuments, ::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest, ::Google::Longrunning::Operation
            # Fetches processor types. Note that we don't use
            # [ListProcessorTypes][google.cloud.documentai.v1beta3.DocumentProcessorService.ListProcessorTypes]
            # here, because it isn't paginated.
            rpc :FetchProcessorTypes, ::Google::Cloud::DocumentAI::V1beta3::FetchProcessorTypesRequest, ::Google::Cloud::DocumentAI::V1beta3::FetchProcessorTypesResponse
            # Lists the processor types that exist.
            rpc :ListProcessorTypes, ::Google::Cloud::DocumentAI::V1beta3::ListProcessorTypesRequest, ::Google::Cloud::DocumentAI::V1beta3::ListProcessorTypesResponse
            # Gets a processor type detail.
            rpc :GetProcessorType, ::Google::Cloud::DocumentAI::V1beta3::GetProcessorTypeRequest, ::Google::Cloud::DocumentAI::V1beta3::ProcessorType
            # Lists all processors which belong to this project.
            rpc :ListProcessors, ::Google::Cloud::DocumentAI::V1beta3::ListProcessorsRequest, ::Google::Cloud::DocumentAI::V1beta3::ListProcessorsResponse
            # Gets a processor detail.
            rpc :GetProcessor, ::Google::Cloud::DocumentAI::V1beta3::GetProcessorRequest, ::Google::Cloud::DocumentAI::V1beta3::Processor
            # Trains a new processor version.
            # Operation metadata is returned as
            # [TrainProcessorVersionMetadata][google.cloud.documentai.v1beta3.TrainProcessorVersionMetadata].
            rpc :TrainProcessorVersion, ::Google::Cloud::DocumentAI::V1beta3::TrainProcessorVersionRequest, ::Google::Longrunning::Operation
            # Gets a processor version detail.
            rpc :GetProcessorVersion, ::Google::Cloud::DocumentAI::V1beta3::GetProcessorVersionRequest, ::Google::Cloud::DocumentAI::V1beta3::ProcessorVersion
            # Lists all versions of a processor.
            rpc :ListProcessorVersions, ::Google::Cloud::DocumentAI::V1beta3::ListProcessorVersionsRequest, ::Google::Cloud::DocumentAI::V1beta3::ListProcessorVersionsResponse
            # Deletes the processor version, all artifacts under the processor version
            # will be deleted.
            rpc :DeleteProcessorVersion, ::Google::Cloud::DocumentAI::V1beta3::DeleteProcessorVersionRequest, ::Google::Longrunning::Operation
            # Deploys the processor version.
            rpc :DeployProcessorVersion, ::Google::Cloud::DocumentAI::V1beta3::DeployProcessorVersionRequest, ::Google::Longrunning::Operation
            # Undeploys the processor version.
            rpc :UndeployProcessorVersion, ::Google::Cloud::DocumentAI::V1beta3::UndeployProcessorVersionRequest, ::Google::Longrunning::Operation
            # Creates a processor from the
            # [ProcessorType][google.cloud.documentai.v1beta3.ProcessorType] provided.
            # The processor will be at `ENABLED` state by default after its creation.
            # Note that this method requires the `documentai.processors.create`
            # permission on the project, which is highly privileged. A user or service
            # account with this permission can create new processors that can interact
            # with any gcs bucket in your project.
            rpc :CreateProcessor, ::Google::Cloud::DocumentAI::V1beta3::CreateProcessorRequest, ::Google::Cloud::DocumentAI::V1beta3::Processor
            # Deletes the processor, unloads all deployed model artifacts if it was
            # enabled and then deletes all artifacts associated with this processor.
            rpc :DeleteProcessor, ::Google::Cloud::DocumentAI::V1beta3::DeleteProcessorRequest, ::Google::Longrunning::Operation
            # Enables a processor
            rpc :EnableProcessor, ::Google::Cloud::DocumentAI::V1beta3::EnableProcessorRequest, ::Google::Longrunning::Operation
            # Disables a processor
            rpc :DisableProcessor, ::Google::Cloud::DocumentAI::V1beta3::DisableProcessorRequest, ::Google::Longrunning::Operation
            # Set the default (active) version of a
            # [Processor][google.cloud.documentai.v1beta3.Processor] that will be used in
            # [ProcessDocument][google.cloud.documentai.v1beta3.DocumentProcessorService.ProcessDocument]
            # and
            # [BatchProcessDocuments][google.cloud.documentai.v1beta3.DocumentProcessorService.BatchProcessDocuments].
            rpc :SetDefaultProcessorVersion, ::Google::Cloud::DocumentAI::V1beta3::SetDefaultProcessorVersionRequest, ::Google::Longrunning::Operation
            # Send a document for Human Review. The input document should be processed by
            # the specified processor.
            rpc :ReviewDocument, ::Google::Cloud::DocumentAI::V1beta3::ReviewDocumentRequest, ::Google::Longrunning::Operation
            # Evaluates a ProcessorVersion against annotated documents, producing an
            # Evaluation.
            rpc :EvaluateProcessorVersion, ::Google::Cloud::DocumentAI::V1beta3::EvaluateProcessorVersionRequest, ::Google::Longrunning::Operation
            # Retrieves a specific evaluation.
            rpc :GetEvaluation, ::Google::Cloud::DocumentAI::V1beta3::GetEvaluationRequest, ::Google::Cloud::DocumentAI::V1beta3::Evaluation
            # Retrieves a set of evaluations for a given processor version.
            rpc :ListEvaluations, ::Google::Cloud::DocumentAI::V1beta3::ListEvaluationsRequest, ::Google::Cloud::DocumentAI::V1beta3::ListEvaluationsResponse
            # Imports a processor version from source processor version.
            rpc :ImportProcessorVersion, ::Google::Cloud::DocumentAI::V1beta3::ImportProcessorVersionRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
