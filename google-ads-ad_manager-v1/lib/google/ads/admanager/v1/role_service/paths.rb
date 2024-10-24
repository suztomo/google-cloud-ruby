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
        module RoleService
          # Path helper methods for the RoleService API.
          module Paths
            ##
            # Create a fully-qualified Network resource string.
            #
            # The resource will be in the following format:
            #
            # `networks/{network_code}`
            #
            # @param network_code [String]
            #
            # @return [::String]
            def network_path network_code:
              "networks/#{network_code}"
            end

            ##
            # Create a fully-qualified Role resource string.
            #
            # The resource will be in the following format:
            #
            # `networks/{network_code}/roles/{role}`
            #
            # @param network_code [String]
            # @param role [String]
            #
            # @return [::String]
            def role_path network_code:, role:
              raise ::ArgumentError, "network_code cannot contain /" if network_code.to_s.include? "/"

              "networks/#{network_code}/roles/#{role}"
            end

            extend self
          end
        end
      end
    end
  end
end
