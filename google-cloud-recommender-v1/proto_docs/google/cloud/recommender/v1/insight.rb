# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Recommender
      module V1
        # An insight along with the information used to derive the insight. The insight
        # may have associated recomendations as well.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the insight.
        # @!attribute [rw] description
        #   @return [::String]
        #     Free-form human readable summary in English. The maximum length is 500
        #     characters.
        # @!attribute [rw] target_resources
        #   @return [::Array<::String>]
        #     Fully qualified resource names that this insight is targeting.
        # @!attribute [rw] insight_subtype
        #   @return [::String]
        #     Insight subtype. Insight content schema will be stable for a given subtype.
        # @!attribute [rw] content
        #   @return [::Google::Protobuf::Struct]
        #     A struct of custom fields to explain the insight.
        #     Example: "grantedPermissionsCount": "1000"
        # @!attribute [rw] last_refresh_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Timestamp of the latest data used to generate the insight.
        # @!attribute [rw] observation_period
        #   @return [::Google::Protobuf::Duration]
        #     Observation period that led to the insight. The source data used to
        #     generate the insight ends at last_refresh_time and begins at
        #     (last_refresh_time - observation_period).
        # @!attribute [rw] state_info
        #   @return [::Google::Cloud::Recommender::V1::InsightStateInfo]
        #     Information state and metadata.
        # @!attribute [rw] category
        #   @return [::Google::Cloud::Recommender::V1::Insight::Category]
        #     Category being targeted by the insight.
        # @!attribute [rw] severity
        #   @return [::Google::Cloud::Recommender::V1::Insight::Severity]
        #     Insight's severity.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Fingerprint of the Insight. Provides optimistic locking when updating
        #     states.
        # @!attribute [rw] associated_recommendations
        #   @return [::Array<::Google::Cloud::Recommender::V1::Insight::RecommendationReference>]
        #     Recommendations derived from this insight.
        class Insight
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Reference to an associated recommendation.
          # @!attribute [rw] recommendation
          #   @return [::String]
          #     Recommendation resource name, e.g.
          #     projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/recommendations/[RECOMMENDATION_ID]
          class RecommendationReference
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Insight category.
          module Category
            # Unspecified category.
            CATEGORY_UNSPECIFIED = 0

            # The insight is related to cost.
            COST = 1

            # The insight is related to security.
            SECURITY = 2

            # The insight is related to performance.
            PERFORMANCE = 3

            # This insight is related to manageability.
            MANAGEABILITY = 4
          end

          # Insight severity levels.
          module Severity
            # Insight has unspecified severity.
            SEVERITY_UNSPECIFIED = 0

            # Insight has low severity.
            LOW = 1

            # Insight has medium severity.
            MEDIUM = 2

            # Insight has high severity.
            HIGH = 3

            # Insight has critical severity.
            CRITICAL = 4
          end
        end

        # Information related to insight state.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Recommender::V1::InsightStateInfo::State]
        #     Insight state.
        # @!attribute [rw] state_metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A map of metadata for the state, provided by user or automations systems.
        class InsightStateInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class StateMetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents insight state.
          module State
            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # Insight is active. Content for ACTIVE insights can be updated by Google.
            # ACTIVE insights can be marked DISMISSED OR ACCEPTED.
            ACTIVE = 1

            # Some action has been taken based on this insight. Insights become
            # accepted when a recommendation derived from the insight has been marked
            # CLAIMED, SUCCEEDED, or FAILED. ACTIVE insights can also be marked
            # ACCEPTED explicitly. Content for ACCEPTED insights is immutable. ACCEPTED
            # insights can only be marked ACCEPTED (which may update state metadata).
            ACCEPTED = 2

            # Insight is dismissed. Content for DISMISSED insights can be updated by
            # Google. DISMISSED insights can be marked as ACTIVE.
            DISMISSED = 3
          end
        end
      end
    end
  end
end
