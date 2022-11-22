# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module DocumentAI
      module V1
        # Request message for the process document method.
        # @!attribute [rw] inline_document
        #   @return [::Google::Cloud::DocumentAI::V1::Document]
        #     An inline document proto.
        # @!attribute [rw] raw_document
        #   @return [::Google::Cloud::DocumentAI::V1::RawDocument]
        #     A raw document content (bytes).
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the {::Google::Cloud::DocumentAI::V1::Processor Processor} or
        #     {::Google::Cloud::DocumentAI::V1::ProcessorVersion ProcessorVersion}
        #     to use for processing. If a {::Google::Cloud::DocumentAI::V1::Processor Processor} is specified, the server will use
        #     its {::Google::Cloud::DocumentAI::V1::Processor#default_processor_version default version}. Format:
        #     `projects/{project}/locations/{location}/processors/{processor}`, or
        #     `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
        # @!attribute [rw] skip_human_review
        #   @return [::Boolean]
        #     Whether Human Review feature should be skipped for this request. Default to
        #     false.
        # @!attribute [rw] field_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Specifies which fields to include in ProcessResponse's document.
        #     Only supports top level document and pages field so it must be in the form
        #     of `{document_field_name}` or `pages.{page_field_name}`.
        class ProcessRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The status of human review on a processed document.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DocumentAI::V1::HumanReviewStatus::State]
        #     The state of human review on the processing request.
        # @!attribute [rw] state_message
        #   @return [::String]
        #     A message providing more details about the human review state.
        # @!attribute [rw] human_review_operation
        #   @return [::String]
        #     The name of the operation triggered by the processed document. This field
        #     is populated only when the [state] is [HUMAN_REVIEW_IN_PROGRESS]. It has
        #     the same response type and metadata as the long running operation returned
        #     by [ReviewDocument] method.
        class HumanReviewStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The final state of human review on a processed document.
          module State
            # Human review state is unspecified. Most likely due to an internal error.
            STATE_UNSPECIFIED = 0

            # Human review is skipped for the document. This can happen because human
            # review is not enabled on the processor or the processing request has
            # been set to skip this document.
            SKIPPED = 1

            # Human review validation is triggered and passed, so no review is needed.
            VALIDATION_PASSED = 2

            # Human review validation is triggered and the document is under review.
            IN_PROGRESS = 3

            # Some error happened during triggering human review, see the
            # [state_message] for details.
            ERROR = 4
          end
        end

        # Response message for the process document method.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::DocumentAI::V1::Document]
        #     The document payload, will populate fields based on the processor's
        #     behavior.
        # @!attribute [rw] human_review_status
        #   @return [::Google::Cloud::DocumentAI::V1::HumanReviewStatus]
        #     The status of human review on the processed document.
        class ProcessResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for batch process document method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of {::Google::Cloud::DocumentAI::V1::Processor Processor} or
        #     {::Google::Cloud::DocumentAI::V1::ProcessorVersion ProcessorVersion}.
        #     Format: `projects/{project}/locations/{location}/processors/{processor}`,
        #     or
        #     `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
        # @!attribute [rw] input_documents
        #   @return [::Google::Cloud::DocumentAI::V1::BatchDocumentsInputConfig]
        #     The input documents for batch process.
        # @!attribute [rw] document_output_config
        #   @return [::Google::Cloud::DocumentAI::V1::DocumentOutputConfig]
        #     The overall output config for batch process.
        # @!attribute [rw] skip_human_review
        #   @return [::Boolean]
        #     Whether Human Review feature should be skipped for this request. Default to
        #     false.
        class BatchProcessRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for batch process document method.
        class BatchProcessResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for batch process method.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DocumentAI::V1::BatchProcessMetadata::State]
        #     The state of the current batch processing.
        # @!attribute [rw] state_message
        #   @return [::String]
        #     A message providing more details about the current state of processing.
        #     For example, the error message if the operation is failed.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The creation time of the operation.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The last update time of the operation.
        # @!attribute [rw] individual_process_statuses
        #   @return [::Array<::Google::Cloud::DocumentAI::V1::BatchProcessMetadata::IndividualProcessStatus>]
        #     The list of response details of each document.
        class BatchProcessMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The status of a each individual document in the batch process.
          # @!attribute [rw] input_gcs_source
          #   @return [::String]
          #     The source of the document, same as the [input_gcs_source] field in the
          #     request when the batch process started. The batch process is started by
          #     take snapshot of that document, since a user can move or change that
          #     document during the process.
          # @!attribute [rw] status
          #   @return [::Google::Rpc::Status]
          #     The status processing the document.
          # @!attribute [rw] output_gcs_destination
          #   @return [::String]
          #     The output_gcs_destination (in the request as `output_gcs_destination`)
          #     of the processed document if it was successful, otherwise empty.
          # @!attribute [rw] human_review_status
          #   @return [::Google::Cloud::DocumentAI::V1::HumanReviewStatus]
          #     The status of human review on the processed document.
          class IndividualProcessStatus
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Possible states of the batch processing operation.
          module State
            # The default value. This value is used if the state is omitted.
            STATE_UNSPECIFIED = 0

            # Request operation is waiting for scheduling.
            WAITING = 1

            # Request is being processed.
            RUNNING = 2

            # The batch processing completed successfully.
            SUCCEEDED = 3

            # The batch processing was being cancelled.
            CANCELLING = 4

            # The batch processing was cancelled.
            CANCELLED = 5

            # The batch processing has failed.
            FAILED = 6
          end
        end

        # Request message for fetch processor types.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project of processor type to list.
        #     The available processor types may depend on the allow-listing on projects.
        #     Format: `projects/{project}/locations/{location}`
        class FetchProcessorTypesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for fetch processor types.
        # @!attribute [rw] processor_types
        #   @return [::Array<::Google::Cloud::DocumentAI::V1::ProcessorType>]
        #     The list of processor types.
        class FetchProcessorTypesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for list processor types.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The location of processor type to list.
        #     The available processor types may depend on the allow-listing on projects.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of processor types to return.
        #     If unspecified, at most 100 processor types will be returned.
        #     The maximum value is 500; values above 500 will be coerced to 500.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Used to retrieve the next page of results, empty if at the end of the list.
        class ListProcessorTypesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for list processor types.
        # @!attribute [rw] processor_types
        #   @return [::Array<::Google::Cloud::DocumentAI::V1::ProcessorType>]
        #     The processor types.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Points to the next page, otherwise empty.
        class ListProcessorTypesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for list all processors belongs to a project.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent (project and location) which owns this collection of Processors.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of processors to return.
        #     If unspecified, at most 50 processors will be returned.
        #     The maximum value is 100; values above 100 will be coerced to 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     We will return the processors sorted by creation time. The page token
        #     will point to the next processor.
        class ListProcessorsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for list processors.
        # @!attribute [rw] processors
        #   @return [::Array<::Google::Cloud::DocumentAI::V1::Processor>]
        #     The list of processors.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Points to the next processor, otherwise empty.
        class ListProcessorsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for get processor.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name.
        class GetProcessorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for get processor version.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name.
        class GetProcessorVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for list all processor versions belongs to a processor.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent (project, location and processor) to list all versions.
        #     Format: `projects/{project}/locations/{location}/processors/{processor}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of processor versions to return.
        #     If unspecified, at most 10 processor versions will be returned.
        #     The maximum value is 20; values above 20 will be coerced to 20.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     We will return the processor versions sorted by creation time. The page
        #     token will point to the next processor version.
        class ListProcessorVersionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for list processors.
        # @!attribute [rw] processor_versions
        #   @return [::Array<::Google::Cloud::DocumentAI::V1::ProcessorVersion>]
        #     The list of processors.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Points to the next processor, otherwise empty.
        class ListProcessorVersionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the delete processor version method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor version resource name to be deleted.
        class DeleteProcessorVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for delete processor version method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class DeleteProcessorVersionMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the deploy processor version method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor version resource name to be deployed.
        class DeployProcessorVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the deploy processor version method.
        class DeployProcessorVersionResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for deploy processor version method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class DeployProcessorVersionMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the undeploy processor version method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor version resource name to be undeployed.
        class UndeployProcessorVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the undeploy processor version method.
        class UndeployProcessorVersionResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for the undeploy processor version
        # method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class UndeployProcessorVersionMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for create a processor. Notice this request is sent to
        # a regionalized backend service, and if the processor type is not available
        # on that region, the creation will fail.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent (project and location) under which to create the processor.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] processor
        #   @return [::Google::Cloud::DocumentAI::V1::Processor]
        #     Required. The processor to be created, requires [processor_type] and [display_name]
        #     to be set. Also, the processor is under CMEK if CMEK fields are set.
        class CreateProcessorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the delete processor method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name to be deleted.
        class DeleteProcessorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for delete processor method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class DeleteProcessorMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the enable processor method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name to be enabled.
        class EnableProcessorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the enable processor method.
        # Intentionally empty proto for adding fields in future.
        class EnableProcessorResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for enable processor method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class EnableProcessorMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the disable processor method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name to be disabled.
        class DisableProcessorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the disable processor method.
        # Intentionally empty proto for adding fields in future.
        class DisableProcessorResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for disable processor method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class DisableProcessorMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the set default processor version method.
        # @!attribute [rw] processor
        #   @return [::String]
        #     Required. The resource name of the {::Google::Cloud::DocumentAI::V1::Processor Processor} to change default version.
        # @!attribute [rw] default_processor_version
        #   @return [::String]
        #     Required. The resource name of child {::Google::Cloud::DocumentAI::V1::ProcessorVersion ProcessorVersion} to use as default.
        #     Format:
        #     `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{version}`
        class SetDefaultProcessorVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for set default processor version method.
        class SetDefaultProcessorVersionResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for set default processor version
        # method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class SetDefaultProcessorVersionMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for review document method.
        # @!attribute [rw] inline_document
        #   @return [::Google::Cloud::DocumentAI::V1::Document]
        #     An inline document proto.
        # @!attribute [rw] human_review_config
        #   @return [::String]
        #     Required. The resource name of the HumanReviewConfig that the document will be
        #     reviewed with.
        # @!attribute [rw] enable_schema_validation
        #   @return [::Boolean]
        #     Whether the validation should be performed on the ad-hoc review request.
        # @!attribute [rw] priority
        #   @return [::Google::Cloud::DocumentAI::V1::ReviewDocumentRequest::Priority]
        #     The priority of the human review task.
        # @!attribute [rw] document_schema
        #   @return [::Google::Cloud::DocumentAI::V1::DocumentSchema]
        #     The document schema of the human review task.
        class ReviewDocumentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The priority level of the human review task.
          module Priority
            # The default priority level.
            DEFAULT = 0

            # The urgent priority level. The labeling manager should allocate labeler
            # resource to the urgent task queue to respect this priority level.
            URGENT = 1
          end
        end

        # Response message for review document method.
        # @!attribute [rw] gcs_destination
        #   @return [::String]
        #     The Cloud Storage uri for the human reviewed document if the review is
        #     succeeded.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DocumentAI::V1::ReviewDocumentResponse::State]
        #     The state of the review operation.
        # @!attribute [rw] rejection_reason
        #   @return [::String]
        #     The reason why the review is rejected by reviewer.
        class ReviewDocumentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Possible states of the review operation.
          module State
            # The default value. This value is used if the state is omitted.
            STATE_UNSPECIFIED = 0

            # The review operation is rejected by the reviewer.
            REJECTED = 1

            # The review operation is succeeded.
            SUCCEEDED = 2
          end
        end

        # The long running operation metadata for review document method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        # @!attribute [rw] question_id
        #   @return [::String]
        #     The Crowd Compute question ID.
        class ReviewDocumentOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
