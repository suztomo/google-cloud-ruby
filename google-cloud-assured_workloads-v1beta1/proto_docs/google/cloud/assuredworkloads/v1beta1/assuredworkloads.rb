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
    module AssuredWorkloads
      module V1beta1
        # Request for creating a workload.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the new Workload's parent.
        #     Must be of the form `organizations/{org_id}/locations/{location_id}`.
        # @!attribute [rw] workload
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload]
        #     Required. Assured Workload to create
        # @!attribute [rw] external_id
        #   @return [::String]
        #     Optional. A identifier associated with the workload and underlying projects which
        #     allows for the break down of billing costs for a workload. The value
        #     provided for the identifier will add a label to the workload and contained
        #     projects with the identifier as the value.
        class CreateWorkloadRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for Updating a workload.
        # @!attribute [rw] workload
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload]
        #     Required. The workload to update.
        #     The workload's `name` field is used to identify the workload to be updated.
        #     Format:
        #     organizations/\\{org_id}/locations/\\{location_id}/workloads/\\{workload_id}
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The list of fields to be updated.
        class UpdateWorkloadRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for restricting list of available resources in Workload environment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the Workload. This is the workloads's
        #     relative path in the API, formatted as
        #     "organizations/\\{organization_id}/locations/\\{location_id}/workloads/\\{workload_id}".
        #     For example,
        #     "organizations/123/locations/us-east1/workloads/assured-workload-1".
        # @!attribute [rw] restriction_type
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesRequest::RestrictionType]
        #     Required. The type of restriction for using gcp products in the Workload environment.
        class RestrictAllowedResourcesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type of restriction.
          module RestrictionType
            # Unknown restriction type.
            RESTRICTION_TYPE_UNSPECIFIED = 0

            # Allow the use all of all gcp products, irrespective of the compliance
            # posture. This effectively removes gcp.restrictServiceUsage OrgPolicy
            # on the AssuredWorkloads Folder.
            ALLOW_ALL_GCP_RESOURCES = 1

            # Based on Workload's compliance regime, allowed list changes.
            # See - https://cloud.google.com/assured-workloads/docs/supported-products
            # for the list of supported resources.
            ALLOW_COMPLIANT_RESOURCES = 2
          end
        end

        # Response for restricting the list of allowed resources.
        class RestrictAllowedResourcesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for deleting a Workload.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The `name` field is used to identify the workload.
        #     Format:
        #     organizations/\\{org_id}/locations/\\{location_id}/workloads/\\{workload_id}
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. The etag of the workload.
        #     If this is provided, it must match the server's etag.
        class DeleteWorkloadRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for fetching a workload.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the Workload to fetch. This is the workloads's
        #     relative path in the API, formatted as
        #     "organizations/\\{organization_id}/locations/\\{location_id}/workloads/\\{workload_id}".
        #     For example,
        #     "organizations/123/locations/us-east1/workloads/assured-workload-1".
        class GetWorkloadRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to analyze a hypothetical move of a source project or project-based
        # workload to a target (destination) folder-based workload.
        # @!attribute [rw] source
        #   @return [::String]
        #     The source type is a project-based workload. Specify the workloads's
        #     relative resource name, formatted as:
        #     "organizations/\\{ORGANIZATION_ID}/locations/\\{LOCATION_ID}/workloads/\\{WORKLOAD_ID}"
        #     For example:
        #     "organizations/123/locations/us-east1/workloads/assured-workload-1"
        # @!attribute [rw] project
        #   @return [::String]
        #     The source type is a project. Specify the project's relative resource
        #     name, formatted as either a project number or a project ID:
        #     "projects/\\{PROJECT_NUMBER}" or "projects/\\{PROJECT_ID}"
        #     For example:
        #     "projects/951040570662" when specifying a project number, or
        #     "projects/my-project-123" when specifying a project ID.
        # @!attribute [rw] target
        #   @return [::String]
        #     Required. The resource ID of the folder-based destination workload. This workload is
        #     where the source project will hypothetically be moved to. Specify the
        #     workload's relative resource name, formatted as:
        #     "organizations/\\{ORGANIZATION_ID}/locations/\\{LOCATION_ID}/workloads/\\{WORKLOAD_ID}"
        #     For example:
        #     "organizations/123/locations/us-east1/workloads/assured-workload-2"
        class AnalyzeWorkloadMoveRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response that includes the analysis of the hypothetical resource move.
        # @!attribute [rw] blockers
        #   @return [::Array<::String>]
        #     A list of blockers that should be addressed before moving the source
        #     project or project-based workload to the destination folder-based workload.
        class AnalyzeWorkloadMoveResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for fetching workloads in an organization.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent Resource to list workloads from.
        #     Must be of the form `organizations/{org_id}/locations/{location}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page token returned from previous request. Page token contains context from
        #     previous request. Page token needs to be passed in the second and following
        #     requests.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A custom filter for filtering by properties of a workload. At this time,
        #     only filtering by labels is supported.
        class ListWorkloadsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of ListWorkloads endpoint.
        # @!attribute [rw] workloads
        #   @return [::Array<::Google::Cloud::AssuredWorkloads::V1beta1::Workload>]
        #     List of Workloads under a given parent.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The next page token. Return empty if reached the last page.
        class ListWorkloadsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An Workload object for managing highly regulated workloads of cloud
        # customers.
        # @!attribute [rw] name
        #   @return [::String]
        #     Optional. The resource name of the workload.
        #     Format:
        #     organizations/\\{organization}/locations/\\{location}/workloads/\\{workload}
        #
        #     Read-only.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The user-assigned display name of the Workload.
        #     When present it must be between 4 to 30 characters.
        #     Allowed characters are: lowercase and uppercase letters, numbers,
        #     hyphen, and spaces.
        #
        #     Example: My Workload
        # @!attribute [r] resources
        #   @return [::Array<::Google::Cloud::AssuredWorkloads::V1beta1::Workload::ResourceInfo>]
        #     Output only. The resources associated with this workload.
        #     These resources will be created when creating the workload.
        #     If any of the projects already exist, the workload creation will fail.
        #     Always read only.
        # @!attribute [rw] compliance_regime
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::ComplianceRegime]
        #     Required. Immutable. Compliance Regime associated with this workload.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Immutable. The Workload creation timestamp.
        # @!attribute [r] billing_account
        #   @return [::String]
        #     Output only. The billing account used for the resources which are
        #     direct children of workload. This billing account is initially associated
        #     with the resources created as part of Workload creation.
        #     After the initial creation of these resources, the customer can change
        #     the assigned billing account.
        #     The resource name has the form
        #     `billingAccounts/{billing_account_id}`. For example,
        #     `billingAccounts/012345-567890-ABCDEF`.
        # @!attribute [rw] il4_settings
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::IL4Settings]
        #     Input only. Immutable. Settings specific to resources needed for IL4.
        # @!attribute [rw] cjis_settings
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::CJISSettings]
        #     Input only. Immutable. Settings specific to resources needed for CJIS.
        # @!attribute [rw] fedramp_high_settings
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::FedrampHighSettings]
        #     Input only. Immutable. Settings specific to resources needed for FedRAMP High.
        # @!attribute [rw] fedramp_moderate_settings
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::FedrampModerateSettings]
        #     Input only. Immutable. Settings specific to resources needed for FedRAMP Moderate.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. ETag of the workload, it is calculated on the basis
        #     of the Workload contents. It will be used in Update & Delete operations.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels applied to the workload.
        # @!attribute [rw] provisioned_resources_parent
        #   @return [::String]
        #     Input only. The parent resource for the resources managed by this Assured Workload. May
        #     be either empty or a folder resource which is a child of the
        #     Workload parent. If not specified all resources are created under the
        #     parent organization.
        #     Format:
        #     folders/\\{folder_id}
        # @!attribute [rw] kms_settings
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::KMSSettings]
        #     Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS
        #     CMEK key is provisioned.
        #     This field is deprecated as of Feb 28, 2022.
        #     In order to create a Keyring, callers should specify,
        #     ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
        # @!attribute [rw] resource_settings
        #   @return [::Array<::Google::Cloud::AssuredWorkloads::V1beta1::Workload::ResourceSettings>]
        #     Input only. Resource properties that are used to customize workload resources.
        #     These properties (such as custom project id) will be used to create
        #     workload resources if possible. This field is optional.
        # @!attribute [r] kaj_enrollment_state
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::KajEnrollmentState]
        #     Output only. Represents the KAJ enrollment state of the given workload.
        # @!attribute [rw] enable_sovereign_controls
        #   @return [::Boolean]
        #     Optional. Indicates the sovereignty status of the given workload.
        #     Currently meant to be used by Europe/Canada customers.
        # @!attribute [r] saa_enrollment_response
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::SaaEnrollmentResponse]
        #     Output only. Represents the SAA enrollment response of the given workload.
        #     SAA enrollment response is queried during GetWorkload call.
        #     In failure cases, user friendly error message is shown in SAA details page.
        # @!attribute [r] compliant_but_disallowed_services
        #   @return [::Array<::String>]
        #     Output only. Urls for services which are compliant for this Assured Workload, but which
        #     are currently disallowed by the ResourceUsageRestriction org policy.
        #     Invoke RestrictAllowedResources endpoint to allow your project developers
        #     to use these services in their environment."
        class Workload
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represent the resources that are children of this Workload.
          # @!attribute [rw] resource_id
          #   @return [::Integer]
          #     Resource identifier.
          #     For a project this represents project_number.
          # @!attribute [rw] resource_type
          #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::ResourceInfo::ResourceType]
          #     Indicates the type of resource.
          class ResourceInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The type of resource.
            module ResourceType
              # Unknown resource type.
              RESOURCE_TYPE_UNSPECIFIED = 0

              # Deprecated. Existing workloads will continue to support this, but new
              # CreateWorkloadRequests should not specify this as an input value.
              CONSUMER_PROJECT = 1

              # Consumer Folder.
              CONSUMER_FOLDER = 4

              # Consumer project containing encryption keys.
              ENCRYPTION_KEYS_PROJECT = 2

              # Keyring resource that hosts encryption keys.
              KEYRING = 3
            end
          end

          # Settings specific to the Key Management Service.
          # @!attribute [rw] next_rotation_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Required. Input only. Immutable. The time at which the Key Management Service will automatically create a
          #     new version of the crypto key and mark it as the primary.
          # @!attribute [rw] rotation_period
          #   @return [::Google::Protobuf::Duration]
          #     Required. Input only. Immutable. [next_rotation_time] will be advanced by this period when the Key
          #     Management Service automatically rotates a key. Must be at least 24 hours
          #     and at most 876,000 hours.
          class KMSSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Settings specific to resources needed for IL4.
          # @!attribute [rw] kms_settings
          #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::KMSSettings]
          #     Input only. Immutable. Settings used to create a CMEK crypto key.
          class IL4Settings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Settings specific to resources needed for CJIS.
          # @!attribute [rw] kms_settings
          #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::KMSSettings]
          #     Input only. Immutable. Settings used to create a CMEK crypto key.
          class CJISSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Settings specific to resources needed for FedRAMP High.
          # @!attribute [rw] kms_settings
          #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::KMSSettings]
          #     Input only. Immutable. Settings used to create a CMEK crypto key.
          class FedrampHighSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Settings specific to resources needed for FedRAMP Moderate.
          # @!attribute [rw] kms_settings
          #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::KMSSettings]
          #     Input only. Immutable. Settings used to create a CMEK crypto key.
          class FedrampModerateSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represent the custom settings for the resources to be created.
          # @!attribute [rw] resource_id
          #   @return [::String]
          #     Resource identifier.
          #     For a project this represents project_id. If the project is already
          #     taken, the workload creation will fail.
          #     For KeyRing, this represents the keyring_id.
          #     For a folder, don't set this value as folder_id is assigned by Google.
          # @!attribute [rw] resource_type
          #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::ResourceInfo::ResourceType]
          #     Indicates the type of resource. This field should be specified to
          #     correspond the id to the right project type (CONSUMER_PROJECT or
          #     ENCRYPTION_KEYS_PROJECT)
          # @!attribute [rw] display_name
          #   @return [::String]
          #     User-assigned resource display name.
          #     If not empty it will be used to create a resource with the specified
          #     name.
          class ResourceSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Signed Access Approvals (SAA) enrollment response.
          # @!attribute [rw] setup_status
          #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::SaaEnrollmentResponse::SetupState]
          #     Indicates SAA enrollment status of a given workload.
          # @!attribute [rw] setup_errors
          #   @return [::Array<::Google::Cloud::AssuredWorkloads::V1beta1::Workload::SaaEnrollmentResponse::SetupError>]
          #     Indicates SAA enrollment setup error if any.
          class SaaEnrollmentResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Setup state of SAA enrollment.
            module SetupState
              # Unspecified.
              SETUP_STATE_UNSPECIFIED = 0

              # SAA enrollment pending.
              STATUS_PENDING = 1

              # SAA enrollment comopleted.
              STATUS_COMPLETE = 2
            end

            # Setup error of SAA enrollment.
            module SetupError
              # Unspecified.
              SETUP_ERROR_UNSPECIFIED = 0

              # Invalid states for all customers, to be redirected to AA UI for
              # additional details.
              ERROR_INVALID_BASE_SETUP = 1

              # Returned when there is not an EKM key configured.
              ERROR_MISSING_EXTERNAL_SIGNING_KEY = 2

              # Returned when there are no enrolled services or the customer is
              # enrolled in CAA only for a subset of services.
              ERROR_NOT_ALL_SERVICES_ENROLLED = 3

              # Returned when exception was encountered during evaluation of other
              # criteria.
              ERROR_SETUP_CHECK_FAILED = 4
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Supported Compliance Regimes.
          module ComplianceRegime
            # Unknown compliance regime.
            COMPLIANCE_REGIME_UNSPECIFIED = 0

            # Information protection as per DoD IL4 requirements.
            IL4 = 1

            # Criminal Justice Information Services (CJIS) Security policies.
            CJIS = 2

            # FedRAMP High data protection controls
            FEDRAMP_HIGH = 3

            # FedRAMP Moderate data protection controls
            FEDRAMP_MODERATE = 4

            # Assured Workloads For US Regions data protection controls
            US_REGIONAL_ACCESS = 5

            # Health Insurance Portability and Accountability Act controls
            HIPAA = 6

            # Health Information Trust Alliance controls
            HITRUST = 7

            # Assured Workloads For EU Regions and Support controls
            EU_REGIONS_AND_SUPPORT = 8

            # Assured Workloads For Canada Regions and Support controls
            CA_REGIONS_AND_SUPPORT = 9

            # International Traffic in Arms Regulations
            ITAR = 10

            # Assured Workloads for Australia Regions and Support controls
            AU_REGIONS_AND_US_SUPPORT = 11
          end

          # Key Access Justifications(KAJ) Enrollment State.
          module KajEnrollmentState
            # Default State for KAJ Enrollment.
            KAJ_ENROLLMENT_STATE_UNSPECIFIED = 0

            # Pending State for KAJ Enrollment.
            KAJ_ENROLLMENT_STATE_PENDING = 1

            # Complete State for KAJ Enrollment.
            KAJ_ENROLLMENT_STATE_COMPLETE = 2
          end
        end

        # Operation metadata to give request details of CreateWorkload.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. Time when the operation was created.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. The display name of the workload.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Optional. The parent of the workload.
        # @!attribute [rw] compliance_regime
        #   @return [::Google::Cloud::AssuredWorkloads::V1beta1::Workload::ComplianceRegime]
        #     Optional. Compliance controls that should be applied to the resources managed by
        #     the workload.
        # @!attribute [rw] resource_settings
        #   @return [::Array<::Google::Cloud::AssuredWorkloads::V1beta1::Workload::ResourceSettings>]
        #     Optional. Resource properties in the input that are used for creating/customizing
        #     workload resources.
        class CreateWorkloadOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
