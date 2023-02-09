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
    module Eventarc
      module V1
        # A representation of the Channel resource.
        # A Channel is a resource on which event providers publish their events.
        # The published events are delivered through the transport associated with the
        # channel. Note that a channel is associated with exactly one event provider.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the channel. Must be unique within the
        #     location on the project and must be in
        #     `projects/{project}/locations/{location}/channels/{channel_id}` format.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server assigned unique identifier for the channel. The value
        #     is a UUID4 string and guaranteed to remain unchanged until the resource is
        #     deleted.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [rw] provider
        #   @return [::String]
        #     The name of the event provider (e.g. Eventarc SaaS partner) associated
        #     with the channel. This provider will be granted permissions to publish
        #     events to the channel. Format:
        #     `projects/{project}/locations/{location}/providers/{provider_id}`.
        # @!attribute [r] pubsub_topic
        #   @return [::String]
        #     Output only. The name of the Pub/Sub topic created and managed by
        #     Eventarc system as a transport for the event delivery. Format:
        #     `projects/{project}/topics/{topic_id}`.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Eventarc::V1::Channel::State]
        #     Output only. The state of a Channel.
        # @!attribute [r] activation_token
        #   @return [::String]
        #     Output only. The activation token for the channel. The token must be used
        #     by the provider to register the channel for publishing.
        # @!attribute [rw] crypto_key_name
        #   @return [::String]
        #     Optional. Resource name of a KMS crypto key (managed by the user) used to
        #     encrypt/decrypt their event data.
        #
        #     It must match the pattern
        #     `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
        class Channel
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State lists all the possible states of a Channel
          module State

            # Default value. This value is unused.
            STATE_UNSPECIFIED = 0

            # The PENDING state indicates that a Channel has been created successfully
            # and there is a new activation token available for the subscriber to use
            # to convey the Channel to the provider in order to create a Connection.
            PENDING = 1

            # The ACTIVE state indicates that a Channel has been successfully
            # connected with the event provider.
            # An ACTIVE Channel is ready to receive and route events from the
            # event provider.
            ACTIVE = 2

            # The INACTIVE state indicates that the Channel cannot receive events
            # permanently. There are two possible cases this state can happen:
            #
            # 1. The SaaS provider disconnected from this Channel.
            # 2. The Channel activation token has expired but the SaaS provider
            #    wasn't connected.
            #
            # To re-establish a Connection with a provider, the subscriber
            # should create a new Channel and give it to the provider.
            INACTIVE = 3
          end
        end
      end
    end
  end
end

