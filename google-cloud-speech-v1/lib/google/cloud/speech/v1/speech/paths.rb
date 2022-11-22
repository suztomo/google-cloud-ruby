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
    module Speech
      module V1
        module Speech
          # Path helper methods for the Speech API.
          module Paths
            ##
            # Create a fully-qualified CustomClass resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/customClasses/{custom_class}`
            #
            # @param project [String]
            # @param location [String]
            # @param custom_class [String]
            #
            # @return [::String]
            def custom_class_path project:, location:, custom_class:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/customClasses/#{custom_class}"
            end

            ##
            # Create a fully-qualified PhraseSet resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/phraseSets/{phrase_set}`
            #
            # @param project [String]
            # @param location [String]
            # @param phrase_set [String]
            #
            # @return [::String]
            def phrase_set_path project:, location:, phrase_set:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/phraseSets/#{phrase_set}"
            end

            extend self
          end
        end
      end
    end
  end
end
