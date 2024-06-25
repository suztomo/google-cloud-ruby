# frozen_string_literal: true

# Copyright 2024 Google LLC
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
    module SecurityCenter
      module V2
        # Security Command Center finding.
        #
        # A finding is a record of assessment data like security, risk, health, or
        # privacy, that is ingested into Security Command Center for presentation,
        # notification, analysis, policy testing, and enforcement. For example, a
        # cross-site scripting (XSS) vulnerability in an App Engine application is a
        # finding.
        # @!attribute [rw] name
        #   @return [::String]
        #     The [relative resource
        #     name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
        #     of the finding. The following list shows some examples:
        #
        #     +
        #     `organizations/{organization_id}/sources/{source_id}/findings/{finding_id}`
        #     +
        #     `organizations/{organization_id}/sources/{source_id}/locations/{location_id}/findings/{finding_id}`
        #     + `folders/{folder_id}/sources/{source_id}/findings/{finding_id}`
        #     +
        #     `folders/{folder_id}/sources/{source_id}/locations/{location_id}/findings/{finding_id}`
        #     + `projects/{project_id}/sources/{source_id}/findings/{finding_id}`
        #     +
        #     `projects/{project_id}/sources/{source_id}/locations/{location_id}/findings/{finding_id}`
        # @!attribute [r] canonical_name
        #   @return [::String]
        #     Output only. The canonical name of the finding. The following list shows
        #     some examples:
        #
        #     +
        #     `organizations/{organization_id}/sources/{source_id}/findings/{finding_id}`
        #     +
        #     `organizations/{organization_id}/sources/{source_id}/locations/{location_id}/findings/{finding_id}`
        #     + `folders/{folder_id}/sources/{source_id}/findings/{finding_id}`
        #     +
        #     `folders/{folder_id}/sources/{source_id}/locations/{location_id}/findings/{finding_id}`
        #     + `projects/{project_id}/sources/{source_id}/findings/{finding_id}`
        #     +
        #     `projects/{project_id}/sources/{source_id}/locations/{location_id}/findings/{finding_id}`
        #
        #     The prefix is the closest CRM ancestor of the resource associated with the
        #     finding.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The relative resource name of the source and location the finding belongs
        #     to. See:
        #     https://cloud.google.com/apis/design/resource_names#relative_resource_name
        #     This field is immutable after creation time. The following list shows some
        #     examples:
        #
        #     + `organizations/{organization_id}/sources/{source_id}`
        #     + `folders/{folders_id}/sources/{source_id}`
        #     + `projects/{projects_id}/sources/{source_id}`
        #     +
        #     `organizations/{organization_id}/sources/{source_id}/locations/{location_id}`
        #     + `folders/{folders_id}/sources/{source_id}/locations/{location_id}`
        #     + `projects/{projects_id}/sources/{source_id}/locations/{location_id}`
        # @!attribute [rw] resource_name
        #   @return [::String]
        #     Immutable. For findings on Google Cloud resources, the full resource
        #     name of the Google Cloud resource this finding is for. See:
        #     https://cloud.google.com/apis/design/resource_names#full_resource_name
        #     When the finding is for a non-Google Cloud resource, the resourceName can
        #     be a customer or partner defined string.
        # @!attribute [r] state
        #   @return [::Google::Cloud::SecurityCenter::V2::Finding::State]
        #     Output only. The state of the finding.
        # @!attribute [rw] category
        #   @return [::String]
        #     Immutable. The additional taxonomy group within findings from a given
        #     source. Example: "XSS_FLASH_INJECTION"
        # @!attribute [rw] external_uri
        #   @return [::String]
        #     The URI that, if available, points to a web page outside of Security
        #     Command Center where additional information about the finding can be found.
        #     This field is guaranteed to be either empty or a well formed URL.
        # @!attribute [rw] source_properties
        #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
        #     Source specific properties. These properties are managed by the source
        #     that writes the finding. The key names in the source_properties map must be
        #     between 1 and 255 characters, and must start with a letter and contain
        #     alphanumeric characters or underscores only.
        # @!attribute [r] security_marks
        #   @return [::Google::Cloud::SecurityCenter::V2::SecurityMarks]
        #     Output only. User specified security marks. These marks are entirely
        #     managed by the user and come from the SecurityMarks resource that belongs
        #     to the finding.
        # @!attribute [rw] event_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the finding was first detected. If an existing finding is updated,
        #     then this is the time the update occurred.
        #     For example, if the finding represents an open firewall, this property
        #     captures the time the detector believes the firewall became open. The
        #     accuracy is determined by the detector. If the finding is later resolved,
        #     then this time reflects when the finding was resolved. This must not
        #     be set to a value greater than the current timestamp.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which the finding was created in Security Command
        #     Center.
        # @!attribute [rw] severity
        #   @return [::Google::Cloud::SecurityCenter::V2::Finding::Severity]
        #     The severity of the finding. This field is managed by the source that
        #     writes the finding.
        # @!attribute [rw] mute
        #   @return [::Google::Cloud::SecurityCenter::V2::Finding::Mute]
        #     Indicates the mute state of a finding (either muted, unmuted
        #     or undefined). Unlike other attributes of a finding, a finding provider
        #     shouldn't set the value of mute.
        # @!attribute [rw] finding_class
        #   @return [::Google::Cloud::SecurityCenter::V2::Finding::FindingClass]
        #     The class of the finding.
        # @!attribute [rw] indicator
        #   @return [::Google::Cloud::SecurityCenter::V2::Indicator]
        #     Represents what's commonly known as an *indicator of compromise* (IoC) in
        #     computer forensics. This is an artifact observed on a network or in an
        #     operating system that, with high confidence, indicates a computer
        #     intrusion. For more information, see [Indicator of
        #     compromise](https://en.wikipedia.org/wiki/Indicator_of_compromise).
        # @!attribute [rw] vulnerability
        #   @return [::Google::Cloud::SecurityCenter::V2::Vulnerability]
        #     Represents vulnerability-specific fields like CVE and CVSS scores.
        #     CVE stands for Common Vulnerabilities and Exposures
        #     (https://cve.mitre.org/about/)
        # @!attribute [r] mute_update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The most recent time this finding was muted or unmuted.
        # @!attribute [r] external_systems
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::SecurityCenter::V2::ExternalSystem}]
        #     Output only. Third party SIEM/SOAR fields within SCC, contains external
        #     system information and external system finding fields.
        # @!attribute [rw] mitre_attack
        #   @return [::Google::Cloud::SecurityCenter::V2::MitreAttack]
        #     MITRE ATT&CK tactics and techniques related to this finding.
        #     See: https://attack.mitre.org
        # @!attribute [rw] access
        #   @return [::Google::Cloud::SecurityCenter::V2::Access]
        #     Access details associated with the finding, such as more information on the
        #     caller, which method was accessed, and from where.
        # @!attribute [rw] connections
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::Connection>]
        #     Contains information about the IP connection associated with the finding.
        # @!attribute [rw] mute_initiator
        #   @return [::String]
        #     Records additional information about the mute operation, for example, the
        #     [mute
        #     configuration](https://cloud.google.com/security-command-center/docs/how-to-mute-findings)
        #     that muted the finding and the user who muted the finding.
        # @!attribute [rw] processes
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::Process>]
        #     Represents operating system processes associated with the Finding.
        # @!attribute [r] contacts
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::SecurityCenter::V2::ContactDetails}]
        #     Output only. Map containing the points of contact for the given finding.
        #     The key represents the type of contact, while the value contains a list of
        #     all the contacts that pertain. Please refer to:
        #     https://cloud.google.com/resource-manager/docs/managing-notification-contacts#notification-categories
        #
        #         {
        #           "security": {
        #             "contacts": [
        #               {
        #                 "email": "person1@company.com"
        #               },
        #               {
        #                 "email": "person2@company.com"
        #               }
        #             ]
        #           }
        #         }
        # @!attribute [rw] compliances
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::Compliance>]
        #     Contains compliance information for security standards associated to the
        #     finding.
        # @!attribute [r] parent_display_name
        #   @return [::String]
        #     Output only. The human readable display name of the finding source such as
        #     "Event Threat Detection" or "Security Health Analytics".
        # @!attribute [rw] description
        #   @return [::String]
        #     Contains more details about the finding.
        # @!attribute [rw] exfiltration
        #   @return [::Google::Cloud::SecurityCenter::V2::Exfiltration]
        #     Represents exfiltrations associated with the finding.
        # @!attribute [rw] iam_bindings
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::IamBinding>]
        #     Represents IAM bindings associated with the finding.
        # @!attribute [rw] next_steps
        #   @return [::String]
        #     Steps to address the finding.
        # @!attribute [rw] module_name
        #   @return [::String]
        #     Unique identifier of the module which generated the finding.
        #     Example:
        #     folders/598186756061/securityHealthAnalyticsSettings/customModules/56799441161885
        # @!attribute [rw] containers
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::Container>]
        #     Containers associated with the finding. This field provides information for
        #     both Kubernetes and non-Kubernetes containers.
        # @!attribute [rw] kubernetes
        #   @return [::Google::Cloud::SecurityCenter::V2::Kubernetes]
        #     Kubernetes resources associated with the finding.
        # @!attribute [rw] database
        #   @return [::Google::Cloud::SecurityCenter::V2::Database]
        #     Database associated with the finding.
        # @!attribute [rw] attack_exposure
        #   @return [::Google::Cloud::SecurityCenter::V2::AttackExposure]
        #     The results of an attack path simulation relevant to this finding.
        # @!attribute [rw] files
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::File>]
        #     File associated with the finding.
        # @!attribute [rw] cloud_dlp_inspection
        #   @return [::Google::Cloud::SecurityCenter::V2::CloudDlpInspection]
        #     Cloud Data Loss Prevention (Cloud DLP) inspection results that are
        #     associated with the finding.
        # @!attribute [rw] cloud_dlp_data_profile
        #   @return [::Google::Cloud::SecurityCenter::V2::CloudDlpDataProfile]
        #     Cloud DLP data profile that is associated with the finding.
        # @!attribute [rw] kernel_rootkit
        #   @return [::Google::Cloud::SecurityCenter::V2::KernelRootkit]
        #     Signature of the kernel rootkit.
        # @!attribute [rw] org_policies
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::OrgPolicy>]
        #     Contains information about the org policies associated with the finding.
        # @!attribute [rw] application
        #   @return [::Google::Cloud::SecurityCenter::V2::Application]
        #     Represents an application associated with the finding.
        # @!attribute [rw] backup_disaster_recovery
        #   @return [::Google::Cloud::SecurityCenter::V2::BackupDisasterRecovery]
        #     Fields related to Backup and DR findings.
        # @!attribute [rw] security_posture
        #   @return [::Google::Cloud::SecurityCenter::V2::SecurityPosture]
        #     The security posture associated with the finding.
        # @!attribute [rw] log_entries
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::LogEntry>]
        #     Log entries that are relevant to the finding.
        # @!attribute [rw] load_balancers
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::LoadBalancer>]
        #     The load balancers associated with the finding.
        # @!attribute [rw] toxic_combination
        #   @return [::Google::Cloud::SecurityCenter::V2::ToxicCombination]
        #     Contains details about a group of security issues that, when the issues
        #     occur together, represent a greater risk than when the issues occur
        #     independently. A group of such issues is referred to as a toxic
        #     combination.
        #     This field cannot be updated. Its value is ignored in all update requests.
        # @!attribute [rw] group_memberships
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::GroupMembership>]
        #     Contains details about groups of which this finding is a member. A group is
        #     a collection of findings that are related in some way.
        #     This field cannot be updated. Its value is ignored in all update requests.
        class Finding
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Protobuf::Value]
          class SourcePropertiesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::SecurityCenter::V2::ExternalSystem]
          class ExternalSystemsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::SecurityCenter::V2::ContactDetails]
          class ContactsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The state of the finding.
          module State
            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # The finding requires attention and has not been addressed yet.
            ACTIVE = 1

            # The finding has been fixed, triaged as a non-issue or otherwise addressed
            # and is no longer active.
            INACTIVE = 2
          end

          # The severity of the finding.
          module Severity
            # This value is used for findings when a source doesn't write a severity
            # value.
            SEVERITY_UNSPECIFIED = 0

            # Vulnerability:
            # A critical vulnerability is easily discoverable by an external actor,
            # exploitable, and results in the direct ability to execute arbitrary code,
            # exfiltrate data, and otherwise gain additional access and privileges to
            # cloud resources and workloads. Examples include publicly accessible
            # unprotected user data and public SSH access with weak or no
            # passwords.
            #
            # Threat:
            # Indicates a threat that is able to access, modify, or delete data or
            # execute unauthorized code within existing resources.
            CRITICAL = 1

            # Vulnerability:
            # A high risk vulnerability can be easily discovered and exploited in
            # combination with other vulnerabilities in order to gain direct access and
            # the ability to execute arbitrary code, exfiltrate data, and otherwise
            # gain additional access and privileges to cloud resources and workloads.
            # An example is a database with weak or no passwords that is only
            # accessible internally. This database could easily be compromised by an
            # actor that had access to the internal network.
            #
            # Threat:
            # Indicates a threat that is able to create new computational resources in
            # an environment but not able to access data or execute code in existing
            # resources.
            HIGH = 2

            # Vulnerability:
            # A medium risk vulnerability could be used by an actor to gain access to
            # resources or privileges that enable them to eventually (through multiple
            # steps or a complex exploit) gain access and the ability to execute
            # arbitrary code or exfiltrate data. An example is a service account with
            # access to more projects than it should have. If an actor gains access to
            # the service account, they could potentially use that access to manipulate
            # a project the service account was not intended to.
            #
            # Threat:
            # Indicates a threat that is able to cause operational impact but may not
            # access data or execute unauthorized code.
            MEDIUM = 3

            # Vulnerability:
            # A low risk vulnerability hampers a security organization's ability to
            # detect vulnerabilities or active threats in their deployment, or prevents
            # the root cause investigation of security issues. An example is monitoring
            # and logs being disabled for resource configurations and access.
            #
            # Threat:
            # Indicates a threat that has obtained minimal access to an environment but
            # is not able to access data, execute code, or create resources.
            LOW = 4
          end

          # Mute state a finding can be in.
          module Mute
            # Unspecified.
            MUTE_UNSPECIFIED = 0

            # Finding has been muted.
            MUTED = 1

            # Finding has been unmuted.
            UNMUTED = 2

            # Finding has never been muted/unmuted.
            UNDEFINED = 3
          end

          # Represents what kind of Finding it is.
          module FindingClass
            # Unspecified finding class.
            FINDING_CLASS_UNSPECIFIED = 0

            # Describes unwanted or malicious activity.
            THREAT = 1

            # Describes a potential weakness in software that increases risk to
            # Confidentiality & Integrity & Availability.
            VULNERABILITY = 2

            # Describes a potential weakness in cloud resource/asset configuration that
            # increases risk.
            MISCONFIGURATION = 3

            # Describes a security observation that is for informational purposes.
            OBSERVATION = 4

            # Describes an error that prevents some SCC functionality.
            SCC_ERROR = 5

            # Describes a potential security risk due to a change in the security
            # posture.
            POSTURE_VIOLATION = 6

            # Describes a combination of security issues that represent a more severe
            # security problem when taken together.
            TOXIC_COMBINATION = 7
          end
        end
      end
    end
  end
end
