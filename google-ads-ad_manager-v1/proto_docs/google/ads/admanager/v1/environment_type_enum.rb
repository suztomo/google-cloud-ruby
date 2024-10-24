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
  module Ads
    module Admanager
      module V1
        # Wrapper message for
        # {::Google::Ads::Admanager::V1::EnvironmentTypeEnum::EnvironmentType EnvironmentType}.
        class EnvironmentTypeEnum
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The different environments in which an ad can be shown.
          module EnvironmentType
            # No value specified
            ENVIRONMENT_TYPE_UNSPECIFIED = 0

            # A regular web browser.
            BROWSER = 1

            # Video players.
            VIDEO_PLAYER = 2
          end
        end
      end
    end
  end
end
