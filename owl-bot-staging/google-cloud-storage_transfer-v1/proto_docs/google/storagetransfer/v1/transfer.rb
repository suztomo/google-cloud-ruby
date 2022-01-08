# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module StorageTransfer
      module V1
        # Request passed to GetGoogleServiceAccount.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     Required. The ID of the Google Cloud Platform Console project that the
        #     Google service account is associated with.
        class GetGoogleServiceAccountRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request passed to CreateTransferJob.
        # @!attribute [rw] transfer_job
        #   @return [::Google::Cloud::StorageTransfer::V1::TransferJob]
        #     Required. The job to create.
        class CreateTransferJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request passed to UpdateTransferJob.
        # @!attribute [rw] job_name
        #   @return [::String]
        #     Required. The name of job to update.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     Required. The ID of the Google Cloud Platform Console project that owns the
        #     job.
        # @!attribute [rw] transfer_job
        #   @return [::Google::Cloud::StorageTransfer::V1::TransferJob]
        #     Required. The job to update. `transferJob` is expected to specify only
        #     four fields:
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob#description description},
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob#transfer_spec transfer_spec},
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob#notification_config notification_config},
        #     and {::Google::Cloud::StorageTransfer::V1::TransferJob#status status}.  An
        #     `UpdateTransferJobRequest` that specifies other fields are rejected with
        #     the error {::Google::Rpc::Code::INVALID_ARGUMENT INVALID_ARGUMENT}. Updating a
        #     job status to
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob::Status::DELETED DELETED} requires
        #     `storagetransfer.jobs.delete` permissions.
        # @!attribute [rw] update_transfer_job_field_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The field mask of the fields in `transferJob` that are to be updated in
        #     this request.  Fields in `transferJob` that can be updated are:
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob#description description},
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob#transfer_spec transfer_spec},
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob#notification_config notification_config},
        #     and {::Google::Cloud::StorageTransfer::V1::TransferJob#status status}.  To update the
        #     `transfer_spec` of the job, a complete transfer specification must be
        #     provided. An incomplete specification missing any required fields is
        #     rejected with the error
        #     {::Google::Rpc::Code::INVALID_ARGUMENT INVALID_ARGUMENT}.
        class UpdateTransferJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request passed to GetTransferJob.
        # @!attribute [rw] job_name
        #   @return [::String]
        #     Required.
        #     The job to get.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     Required. The ID of the Google Cloud Platform Console project that owns the
        #     job.
        class GetTransferJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # `projectId`, `jobNames`, and `jobStatuses` are query parameters that can
        # be specified when listing transfer jobs.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Required. A list of query parameters specified as JSON text in the form of:
        #     `{"projectId":"my_project_id",
        #      "jobNames":["jobid1","jobid2",...],
        #      "jobStatuses":["status1","status2",...]}`
        #
        #     Since `jobNames` and `jobStatuses` support multiple values, their values
        #     must be specified with array notation. `projectId` is required.
        #     `jobNames` and `jobStatuses` are optional.  The valid values for
        #     `jobStatuses` are case-insensitive:
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob::Status::ENABLED ENABLED},
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob::Status::DISABLED DISABLED}, and
        #     {::Google::Cloud::StorageTransfer::V1::TransferJob::Status::DELETED DELETED}.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The list page size. The max allowed value is 256.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The list page token.
        class ListTransferJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response from ListTransferJobs.
        # @!attribute [rw] transfer_jobs
        #   @return [::Array<::Google::Cloud::StorageTransfer::V1::TransferJob>]
        #     A list of transfer jobs.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The list next page token.
        class ListTransferJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request passed to PauseTransferOperation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the transfer operation.
        class PauseTransferOperationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request passed to ResumeTransferOperation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the transfer operation.
        class ResumeTransferOperationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request passed to RunTransferJob.
        # @!attribute [rw] job_name
        #   @return [::String]
        #     Required. The name of the transfer job.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     Required. The ID of the Google Cloud Platform Console project that owns the
        #     transfer job.
        class RunTransferJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
