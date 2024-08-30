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
    module Support
      module V2
        # A support case.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name for the case.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The short summary of the issue reported in this case.
        # @!attribute [rw] description
        #   @return [::String]
        #     A broad description of the issue.
        # @!attribute [rw] classification
        #   @return [::Google::Cloud::Support::V2::CaseClassification]
        #     The issue classification applicable to this case.
        # @!attribute [rw] time_zone
        #   @return [::String]
        #     The timezone of the user who created the support case.
        #     It should be in a format IANA recognizes: https://www.iana.org/time-zones.
        #     There is no additional validation done by the API.
        # @!attribute [rw] subscriber_email_addresses
        #   @return [::Array<::String>]
        #     The email addresses to receive updates on this case.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Support::V2::Case::State]
        #     Output only. The current status of the support case.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time this case was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time this case was last updated.
        # @!attribute [rw] creator
        #   @return [::Google::Cloud::Support::V2::Actor]
        #     The user who created the case.
        #
        #     Note: The name and email will be obfuscated if the case was created by
        #     Google Support.
        # @!attribute [rw] contact_email
        #   @return [::String]
        #     A user-supplied email address to send case update notifications for. This
        #     should only be used in BYOID flows, where we cannot infer the user's email
        #     address directly from their EUCs.
        # @!attribute [rw] escalated
        #   @return [::Boolean]
        #     Whether the case is currently escalated.
        # @!attribute [rw] test_case
        #   @return [::Boolean]
        #     Whether this case was created for internal API testing and should not be
        #     acted on by the support team.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     The language the user has requested to receive support in. This should be a
        #     BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`).
        #     If no language or an unsupported language is specified, this field defaults
        #     to English (en).
        #
        #     Language selection during case creation may affect your available support
        #     options. For a list of supported languages and their support working hours,
        #     see: https://cloud.google.com/support/docs/language-working-hours
        # @!attribute [rw] priority
        #   @return [::Google::Cloud::Support::V2::Case::Priority]
        #     The priority of this case.
        class Case
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The status of a support case.
          module State
            # Case is in an unknown state.
            STATE_UNSPECIFIED = 0

            # The case has been created but no one is assigned to work on it yet.
            NEW = 1

            # The case is currently being handled by Google support.
            IN_PROGRESS_GOOGLE_SUPPORT = 2

            # Google is waiting for a response.
            ACTION_REQUIRED = 3

            # A solution has been offered for the case, but it isn't yet closed.
            SOLUTION_PROVIDED = 4

            # The case has been resolved.
            CLOSED = 5
          end

          # The case Priority. P0 is most urgent and P4 the least.
          module Priority
            # Priority is undefined or has not been set yet.
            PRIORITY_UNSPECIFIED = 0

            # Extreme impact on a production service. Service is hard down.
            P0 = 1

            # Critical impact on a production service. Service is currently unusable.
            P1 = 2

            # Severe impact on a production service. Service is usable but greatly
            # impaired.
            P2 = 3

            # Medium impact on a production service.  Service is available, but
            # moderately impaired.
            P3 = 4

            # General questions or minor issues.  Production service is fully
            # available.
            P4 = 5
          end
        end

        # A classification object with a product type and value.
        # @!attribute [rw] id
        #   @return [::String]
        #     The unique ID for a classification. Must be specified for case creation.
        #
        #     To retrieve valid classification IDs for case creation, use
        #     `caseClassifications.search`.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the classification.
        class CaseClassification
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
