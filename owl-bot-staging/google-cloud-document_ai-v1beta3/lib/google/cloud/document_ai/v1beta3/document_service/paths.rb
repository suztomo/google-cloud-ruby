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
    module DocumentAI
      module V1beta3
        module DocumentService
          # Path helper methods for the DocumentService API.
          module Paths
            ##
            # Create a fully-qualified Dataset resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/processors/{processor}/dataset`
            #
            # @param project [String]
            # @param location [String]
            # @param processor [String]
            #
            # @return [::String]
            def dataset_path project:, location:, processor:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/processors/#{processor}/dataset"
            end

            ##
            # Create a fully-qualified DatasetSchema resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/processors/{processor}/dataset/datasetSchema`
            #
            # @param project [String]
            # @param location [String]
            # @param processor [String]
            #
            # @return [::String]
            def dataset_schema_path project:, location:, processor:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/processors/#{processor}/dataset/datasetSchema"
            end

            ##
            # Create a fully-qualified Schema resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/schemas/{schema}`
            #
            # @param project [String]
            # @param location [String]
            # @param schema [String]
            #
            # @return [::String]
            def schema_path project:, location:, schema:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/schemas/#{schema}"
            end

            extend self
          end
        end
      end
    end
  end
end
