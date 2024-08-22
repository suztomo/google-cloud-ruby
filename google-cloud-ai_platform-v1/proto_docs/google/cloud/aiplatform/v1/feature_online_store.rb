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
    module AIPlatform
      module V1
        # Vertex AI Feature Online Store provides a centralized repository for serving
        # ML features and embedding indexes at low latency. The Feature Online Store is
        # a top-level container.
        # @!attribute [rw] bigtable
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureOnlineStore::Bigtable]
        #     Contains settings for the Cloud Bigtable instance that will be created
        #     to serve featureValues for all FeatureViews under this
        #     FeatureOnlineStore.
        # @!attribute [rw] optimized
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureOnlineStore::Optimized]
        #     Contains settings for the Optimized store that will be created
        #     to serve featureValues for all FeatureViews under this
        #     FeatureOnlineStore. When choose Optimized storage type, need to set
        #     {::Google::Cloud::AIPlatform::V1::PrivateServiceConnectConfig#enable_private_service_connect PrivateServiceConnectConfig.enable_private_service_connect}
        #     to use private endpoint. Otherwise will use public endpoint by default.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of the FeatureOnlineStore. Format:
        #     `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this FeatureOnlineStore was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this FeatureOnlineStore was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. Used to perform consistent read-modify-write updates. If not set,
        #     a blind "overwrite" update happens.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels with user-defined metadata to organize your
        #     FeatureOnlineStore.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information on and examples of labels.
        #     No more than 64 user labels can be associated with one
        #     FeatureOnlineStore(System labels are excluded)." System reserved label keys
        #     are prefixed with "aiplatform.googleapis.com/" and are immutable.
        # @!attribute [r] state
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureOnlineStore::State]
        #     Output only. State of the featureOnlineStore.
        # @!attribute [rw] dedicated_serving_endpoint
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureOnlineStore::DedicatedServingEndpoint]
        #     Optional. The dedicated serving endpoint for this FeatureOnlineStore, which
        #     is different from common Vertex service endpoint.
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Optional. Customer-managed encryption key spec for data storage. If set,
        #     online store will be secured by this key.
        # @!attribute [r] satisfies_pzs
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        # @!attribute [r] satisfies_pzi
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        class FeatureOnlineStore
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] auto_scaling
          #   @return [::Google::Cloud::AIPlatform::V1::FeatureOnlineStore::Bigtable::AutoScaling]
          #     Required. Autoscaling config applied to Bigtable Instance.
          class Bigtable
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] min_node_count
            #   @return [::Integer]
            #     Required. The minimum number of nodes to scale down to. Must be greater
            #     than or equal to 1.
            # @!attribute [rw] max_node_count
            #   @return [::Integer]
            #     Required. The maximum number of nodes to scale up to. Must be greater
            #     than or equal to min_node_count, and less than or equal to 10 times of
            #     'min_node_count'.
            # @!attribute [rw] cpu_utilization_target
            #   @return [::Integer]
            #     Optional. A percentage of the cluster's CPU capacity. Can be from 10%
            #     to 80%. When a cluster's CPU utilization exceeds the target that you
            #     have set, Bigtable immediately adds nodes to the cluster. When CPU
            #     utilization is substantially lower than the target, Bigtable removes
            #     nodes. If not set will default to 50%.
            class AutoScaling
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Optimized storage type
          class Optimized
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The dedicated serving endpoint for this FeatureOnlineStore. Only need to
          # set when you choose Optimized storage type. Public endpoint is provisioned
          # by default.
          # @!attribute [r] public_endpoint_domain_name
          #   @return [::String]
          #     Output only. This field will be populated with the domain name to use for
          #     this FeatureOnlineStore
          # @!attribute [rw] private_service_connect_config
          #   @return [::Google::Cloud::AIPlatform::V1::PrivateServiceConnectConfig]
          #     Optional. Private service connect config. The private service connection
          #     is available only for Optimized storage type, not for embedding
          #     management now. If
          #     {::Google::Cloud::AIPlatform::V1::PrivateServiceConnectConfig#enable_private_service_connect PrivateServiceConnectConfig.enable_private_service_connect}
          #     set to true, customers will use private service connection to send
          #     request. Otherwise, the connection will set to public endpoint.
          # @!attribute [r] service_attachment
          #   @return [::String]
          #     Output only. The name of the service attachment resource. Populated if
          #     private service connect is enabled and after FeatureViewSync is created.
          class DedicatedServingEndpoint
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Possible states a featureOnlineStore can have.
          module State
            # Default value. This value is unused.
            STATE_UNSPECIFIED = 0

            # State when the featureOnlineStore configuration is not being updated and
            # the fields reflect the current configuration of the featureOnlineStore.
            # The featureOnlineStore is usable in this state.
            STABLE = 1

            # The state of the featureOnlineStore configuration when it is being
            # updated. During an update, the fields reflect either the original
            # configuration or the updated configuration of the featureOnlineStore. The
            # featureOnlineStore is still usable in this state.
            UPDATING = 2
          end
        end
      end
    end
  end
end
