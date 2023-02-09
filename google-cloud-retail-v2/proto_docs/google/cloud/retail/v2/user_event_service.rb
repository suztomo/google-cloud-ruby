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
    module Retail
      module V2
        # Request message for WriteUserEvent method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent catalog resource name, such as
        #     `projects/1234/locations/global/catalogs/default_catalog`.
        # @!attribute [rw] user_event
        #   @return [::Google::Cloud::Retail::V2::UserEvent]
        #     Required. User event to write.
        # @!attribute [rw] write_async
        #   @return [::Boolean]
        #     If set to true, the user event will be written asynchronously after
        #     validation, and the API will respond without waiting for the write.
        #     Therefore, silent failures can occur even if the API returns success. In
        #     case of silent failures, error messages can be found in Stackdriver logs.
        class WriteUserEventRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for CollectUserEvent method.
        # @!attribute [rw] prebuilt_rule
        #   @return [::String]
        #     The prebuilt rule name that can convert a specific type of raw_json.
        #     For example: "default_schema/v1.0"
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent catalog name, such as
        #     `projects/1234/locations/global/catalogs/default_catalog`.
        # @!attribute [rw] user_event
        #   @return [::String]
        #     Required. URL encoded UserEvent proto with a length limit of 2,000,000
        #     characters.
        # @!attribute [rw] uri
        #   @return [::String]
        #     The URL including cgi-parameters but excluding the hash fragment with a
        #     length limit of 5,000 characters. This is often more useful than the
        #     referer URL, because many browsers only send the domain for 3rd party
        #     requests.
        # @!attribute [rw] ets
        #   @return [::Integer]
        #     The event timestamp in milliseconds. This prevents browser caching of
        #     otherwise identical get requests. The name is abbreviated to reduce the
        #     payload bytes.
        # @!attribute [rw] raw_json
        #   @return [::String]
        #     An arbitrary serialized JSON string that contains necessary information
        #     that can comprise a user event. When this field is specified, the
        #     user_event field will be ignored. Note: line-delimited JSON is not
        #     supported, a single JSON only.
        class CollectUserEventRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for RejoinUserEvents method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent catalog resource name, such as
        #     `projects/1234/locations/global/catalogs/default_catalog`.
        # @!attribute [rw] user_event_rejoin_scope
        #   @return [::Google::Cloud::Retail::V2::RejoinUserEventsRequest::UserEventRejoinScope]
        #     The type of the user event rejoin to define the scope and range of the user
        #     events to be rejoined with the latest product catalog. Defaults to
        #     `USER_EVENT_REJOIN_SCOPE_UNSPECIFIED` if this field is not set, or set to
        #     an invalid integer value.
        class RejoinUserEventsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The scope of user events to be rejoined with the latest product catalog.
          # If the rejoining aims at reducing number of unjoined events, set
          # `UserEventRejoinScope` to `UNJOINED_EVENTS`.
          # If the rejoining aims at correcting product catalog information in joined
          # events, set `UserEventRejoinScope` to `JOINED_EVENTS`.
          # If all events needs to be rejoined, set `UserEventRejoinScope` to
          # `USER_EVENT_REJOIN_SCOPE_UNSPECIFIED`.
          module UserEventRejoinScope

            # Rejoin all events with the latest product catalog, including both joined
            # events and unjoined events.
            USER_EVENT_REJOIN_SCOPE_UNSPECIFIED = 0

            # Only rejoin joined events with the latest product catalog.
            JOINED_EVENTS = 1

            # Only rejoin unjoined events with the latest product catalog.
            UNJOINED_EVENTS = 2
          end
        end

        # Response message for `RejoinUserEvents` method.
        # @!attribute [rw] rejoined_user_events_count
        #   @return [::Integer]
        #     Number of user events that were joined with latest product catalog.
        class RejoinUserEventsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for `RejoinUserEvents` method.
        class RejoinUserEventsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

