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
    module ResourceManager
      module V3
        module TagBindings
          # Path helper methods for the TagBindings API.
          module Paths
            ##
            # Create a fully-qualified TagBinding resource string.
            #
            # The resource will be in the following format:
            #
            # `tagBindings/{tag_binding}`
            #
            # @param tag_binding [String]
            #
            # @return [::String]
            def tag_binding_path tag_binding:
              "tagBindings/#{tag_binding}"
            end

            extend self
          end
        end
      end
    end
  end
end

