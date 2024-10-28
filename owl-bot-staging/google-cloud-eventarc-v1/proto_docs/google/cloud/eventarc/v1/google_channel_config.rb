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
    module Eventarc
      module V1
        # A GoogleChannelConfig is a resource that stores the custom settings
        # respected by Eventarc first-party triggers in the matching region.
        # Once configured, first-party event data will be protected
        # using the specified custom managed encryption key instead of Google-managed
        # encryption keys.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the config. Must be in the format of,
        #     `projects/{project}/locations/{location}/googleChannelConfig`.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [rw] crypto_key_name
        #   @return [::String]
        #     Optional. Resource name of a KMS crypto key (managed by the user) used to
        #     encrypt/decrypt their event data.
        #
        #     It must match the pattern
        #     `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
        class GoogleChannelConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
