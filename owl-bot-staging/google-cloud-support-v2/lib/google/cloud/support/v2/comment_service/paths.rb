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
    module Support
      module V2
        module CommentService
          # Path helper methods for the CommentService API.
          module Paths
            ##
            # Create a fully-qualified Case resource string.
            #
            # @overload case_path(organization:, case:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/cases/{case}`
            #
            #   @param organization [String]
            #   @param case [String]
            #
            # @overload case_path(project:, case:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/cases/{case}`
            #
            #   @param project [String]
            #   @param case [String]
            #
            # @return [::String]
            def case_path **args
              resources = {
                "case:organization" => (proc do |organization:, case:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

                  "organizations/#{organization}/cases/#{binding.local_variable_get :case}"
                end),
                "case:project" => (proc do |project:, case:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/cases/#{binding.local_variable_get :case}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Comment resource string.
            #
            # @overload comment_path(organization:, case:, comment:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/cases/{case}/comments/{comment}`
            #
            #   @param organization [String]
            #   @param case [String]
            #   @param comment [String]
            #
            # @overload comment_path(project:, case:, comment:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/cases/{case}/comments/{comment}`
            #
            #   @param project [String]
            #   @param case [String]
            #   @param comment [String]
            #
            # @return [::String]
            def comment_path **args
              resources = {
                "case:comment:organization" => (proc do |organization:, case:, comment:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"
                  raise ::ArgumentError, "case cannot contain /" if case.to_s.include? "/"

                  "organizations/#{organization}/cases/#{binding.local_variable_get :case}/comments/#{comment}"
                end),
                "case:comment:project" => (proc do |project:, case:, comment:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "case cannot contain /" if case.to_s.include? "/"

                  "projects/#{project}/cases/#{binding.local_variable_get :case}/comments/#{comment}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            extend self
          end
        end
      end
    end
  end
end

