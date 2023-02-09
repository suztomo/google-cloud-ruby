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
    module Run
      module V2
        # Request message for creating a Job.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The location and project in which this Job should be created.
        #     Format: projects/\\{project}/locations/\\{location}, where \\{project} can be
        #     project id or number.
        # @!attribute [rw] job
        #   @return [::Google::Cloud::Run::V2::Job]
        #     Required. The Job instance to create.
        # @!attribute [rw] job_id
        #   @return [::String]
        #     Required. The unique identifier for the Job. The name of the job becomes
        #     \\{parent}/jobs/\\{job_id}.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Indicates that the request should be validated and default values
        #     populated, without persisting the request or creating any resources.
        class CreateJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for obtaining a Job by its full name.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full name of the Job.
        #     Format: projects/\\{project}/locations/\\{location}/jobs/\\{job}, where \\{project}
        #     can be project id or number.
        class GetJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for updating a Job.
        # @!attribute [rw] job
        #   @return [::Google::Cloud::Run::V2::Job]
        #     Required. The Job to be updated.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Indicates that the request should be validated and default values
        #     populated, without persisting the request or updating any resources.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and if the Job does not exist, it will create a new
        #     one. Caller must have both create and update permissions for this call if
        #     this is set to true.
        class UpdateJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for retrieving a list of Jobs.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The location and project to list resources on.
        #     Format: projects/\\{project}/locations/\\{location}, where \\{project} can be
        #     project id or number.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of Jobs to return in this call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token received from a previous call to ListJobs.
        #     All other parameters must match.
        # @!attribute [rw] show_deleted
        #   @return [::Boolean]
        #     If true, returns deleted (but unexpired) resources along with active ones.
        class ListJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message containing a list of Jobs.
        # @!attribute [rw] jobs
        #   @return [::Array<::Google::Cloud::Run::V2::Job>]
        #     The resulting list of Jobs.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token indicating there are more items than page_size. Use it in the next
        #     ListJobs request to continue.
        class ListJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to delete a Job by its full name.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full name of the Job.
        #     Format: projects/\\{project}/locations/\\{location}/jobs/\\{job}, where \\{project}
        #     can be project id or number.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Indicates that the request should be validated without actually
        #     deleting any resources.
        # @!attribute [rw] etag
        #   @return [::String]
        #     A system-generated fingerprint for this version of the
        #     resource. May be used to detect modification conflict during updates.
        class DeleteJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to create a new Execution of a Job.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full name of the Job.
        #     Format: projects/\\{project}/locations/\\{location}/jobs/\\{job}, where \\{project}
        #     can be project id or number.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Indicates that the request should be validated without actually
        #     deleting any resources.
        # @!attribute [rw] etag
        #   @return [::String]
        #     A system-generated fingerprint for this version of the
        #     resource. May be used to detect modification conflict during updates.
        class RunJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Job represents the configuration of a single job, which references a
        # container image that is run to completion.
        # @!attribute [rw] name
        #   @return [::String]
        #     The fully qualified name of this Job.
        #
        #     Format:
        #     projects/\\{project}/locations/\\{location}/jobs/\\{job}
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server assigned unique identifier for the Execution. The value
        #     is a UUID4 string and guaranteed to remain unchanged until the resource is
        #     deleted.
        # @!attribute [r] generation
        #   @return [::Integer]
        #     Output only. A number that monotonically increases every time the user
        #     modifies the desired state.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     KRM-style labels for the resource.
        #     User-provided labels are shared with Google's billing system, so they can
        #     be used to filter, or break down billing charges by team, component,
        #     environment, state, etc. For more information, visit
        #     https://cloud.google.com/resource-manager/docs/creating-managing-labels or
        #     https://cloud.google.com/run/docs/configuring/labels
        #
        #     <p>Cloud Run API v2 does not support labels with `run.googleapis.com`,
        #     `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev`
        #     namespaces, and they will be rejected. All system labels in v1 now have a
        #     corresponding field in v2 Job.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     KRM-style annotations for the resource. Unstructured key value map that may
        #     be set by external tools to store and arbitrary metadata.
        #     They are not queryable and should be preserved
        #     when modifying objects.
        #
        #     <p>Cloud Run API v2 does not support annotations with `run.googleapis.com`,
        #     `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev`
        #     namespaces, and they will be rejected. All system annotations in v1 now
        #     have a corresponding field in v2 Job.
        #
        #     <p>This field follows Kubernetes annotations' namespacing, limits, and
        #     rules. More info: https://kubernetes.io/docs/user-guide/annotations
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [r] delete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The deletion time.
        # @!attribute [r] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. For a deleted resource, the time after which it will be
        #     permamently deleted.
        # @!attribute [r] creator
        #   @return [::String]
        #     Output only. Email address of the authenticated creator.
        # @!attribute [r] last_modifier
        #   @return [::String]
        #     Output only. Email address of the last authenticated modifier.
        # @!attribute [rw] client
        #   @return [::String]
        #     Arbitrary identifier for the API client.
        # @!attribute [rw] client_version
        #   @return [::String]
        #     Arbitrary version identifier for the API client.
        # @!attribute [rw] launch_stage
        #   @return [::Google::Api::LaunchStage]
        #     The launch stage as defined by [Google Cloud Platform
        #     Launch Stages](https://cloud.google.com/terms/launch-stages).
        #     Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA
        #     is assumed.
        # @!attribute [rw] binary_authorization
        #   @return [::Google::Cloud::Run::V2::BinaryAuthorization]
        #     Settings for the Binary Authorization feature.
        # @!attribute [rw] template
        #   @return [::Google::Cloud::Run::V2::ExecutionTemplate]
        #     Required. The template used to create executions for this Job.
        # @!attribute [r] observed_generation
        #   @return [::Integer]
        #     Output only. The generation of this Job. See comments in `reconciling` for
        #     additional information on reconciliation process in Cloud Run.
        # @!attribute [r] terminal_condition
        #   @return [::Google::Cloud::Run::V2::Condition]
        #     Output only. The Condition of this Job, containing its readiness status,
        #     and detailed error information in case it did not reach the desired state.
        # @!attribute [r] conditions
        #   @return [::Array<::Google::Cloud::Run::V2::Condition>]
        #     Output only. The Conditions of all other associated sub-resources. They
        #     contain additional diagnostics information in case the Job does not reach
        #     its desired state. See comments in `reconciling` for additional information
        #     on reconciliation process in Cloud Run.
        # @!attribute [r] execution_count
        #   @return [::Integer]
        #     Output only. Number of executions created for this job.
        # @!attribute [r] latest_created_execution
        #   @return [::Google::Cloud::Run::V2::ExecutionReference]
        #     Output only. Name of the last created execution.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. Returns true if the Job is currently being acted upon by the
        #     system to bring it into the desired state.
        #
        #     When a new Job is created, or an existing one is updated, Cloud Run
        #     will asynchronously perform all necessary steps to bring the Job to the
        #     desired state. This process is called reconciliation.
        #     While reconciliation is in process, `observed_generation` and
        #     `latest_succeeded_execution`, will have transient values that might
        #     mismatch the intended state: Once reconciliation is over (and this field is
        #     false), there are two possible outcomes: reconciliation succeeded and the
        #     state matches the Job, or there was an error,  and reconciliation failed.
        #     This state can be found in `terminal_condition.state`.
        #
        #     If reconciliation succeeded, the following fields will match:
        #     `observed_generation` and `generation`, `latest_succeeded_execution` and
        #     `latest_created_execution`.
        #
        #     If reconciliation failed, `observed_generation` and
        #     `latest_succeeded_execution` will have the state of the last succeeded
        #     execution or empty for newly created Job. Additional information on the
        #     failure can be found in `terminal_condition` and `conditions`.
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. A system-generated fingerprint for this version of the
        #     resource. May be used to detect modification conflict during updates.
        class Job
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Reference to an Execution. Use /Executions.GetExecution with the given name
        # to get full execution including the latest status.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the execution.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Creation timestamp of the execution.
        # @!attribute [rw] completion_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Creation timestamp of the execution.
        class ExecutionReference
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

