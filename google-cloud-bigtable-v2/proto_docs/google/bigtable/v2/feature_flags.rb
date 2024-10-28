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
    module Bigtable
      module V2
        # Feature flags supported or enabled by a client.
        # This is intended to be sent as part of request metadata to assure the server
        # that certain behaviors are safe to enable. This proto is meant to be
        # serialized and websafe-base64 encoded under the `bigtable-features` metadata
        # key. The value will remain constant for the lifetime of a client and due to
        # HTTP2's HPACK compression, the request overhead will be tiny.
        # This is an internal implementation detail and should not be used by end users
        # directly.
        # @!attribute [rw] reverse_scans
        #   @return [::Boolean]
        #     Notify the server that the client supports reverse scans. The server will
        #     reject ReadRowsRequests with the reverse bit set when this is absent.
        # @!attribute [rw] mutate_rows_rate_limit
        #   @return [::Boolean]
        #     Notify the server that the client enables batch write flow control by
        #     requesting RateLimitInfo from MutateRowsResponse. Due to technical reasons,
        #     this disables partial retries.
        # @!attribute [rw] mutate_rows_rate_limit2
        #   @return [::Boolean]
        #     Notify the server that the client enables batch write flow control by
        #     requesting RateLimitInfo from MutateRowsResponse. With partial retries
        #     enabled.
        # @!attribute [rw] last_scanned_row_responses
        #   @return [::Boolean]
        #     Notify the server that the client supports the last_scanned_row field
        #     in ReadRowsResponse for long-running scans.
        # @!attribute [rw] routing_cookie
        #   @return [::Boolean]
        #     Notify the server that the client supports using encoded routing cookie
        #     strings to retry requests with.
        # @!attribute [rw] retry_info
        #   @return [::Boolean]
        #     Notify the server that the client supports using retry info back off
        #     durations to retry requests with.
        # @!attribute [rw] client_side_metrics_enabled
        #   @return [::Boolean]
        #     Notify the server that the client has client side metrics enabled.
        # @!attribute [rw] traffic_director_enabled
        #   @return [::Boolean]
        #     Notify the server that the client using Traffic Director endpoint.
        # @!attribute [rw] direct_access_requested
        #   @return [::Boolean]
        #     Notify the server that the client explicitly opted in for Direct Access.
        class FeatureFlags
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
