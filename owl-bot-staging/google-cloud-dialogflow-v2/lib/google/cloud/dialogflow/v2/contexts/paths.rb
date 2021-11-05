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
    module Dialogflow
      module V2
        module Contexts
          # Path helper methods for the Contexts API.
          module Paths
            ##
            # Create a fully-qualified Context resource string.
            #
            # @overload context_path(project:, session:, context:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/agent/sessions/{session}/contexts/{context}`
            #
            #   @param project [String]
            #   @param session [String]
            #   @param context [String]
            #
            # @overload context_path(project:, environment:, user:, session:, context:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/agent/environments/{environment}/users/{user}/sessions/{session}/contexts/{context}`
            #
            #   @param project [String]
            #   @param environment [String]
            #   @param user [String]
            #   @param session [String]
            #   @param context [String]
            #
            # @overload context_path(project:, location:, session:, context:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/agent/sessions/{session}/contexts/{context}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param session [String]
            #   @param context [String]
            #
            # @overload context_path(project:, location:, environment:, user:, session:, context:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/agent/environments/{environment}/users/{user}/sessions/{session}/contexts/{context}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param environment [String]
            #   @param user [String]
            #   @param session [String]
            #   @param context [String]
            #
            # @return [::String]
            def context_path **args
              resources = {
                "context:project:session" => (proc do |project:, session:, context:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "session cannot contain /" if session.to_s.include? "/"

                  "projects/#{project}/agent/sessions/#{session}/contexts/#{context}"
                end),
                "context:environment:project:session:user" => (proc do |project:, environment:, user:, session:, context:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "environment cannot contain /" if environment.to_s.include? "/"
                  raise ::ArgumentError, "user cannot contain /" if user.to_s.include? "/"
                  raise ::ArgumentError, "session cannot contain /" if session.to_s.include? "/"

                  "projects/#{project}/agent/environments/#{environment}/users/#{user}/sessions/#{session}/contexts/#{context}"
                end),
                "context:location:project:session" => (proc do |project:, location:, session:, context:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "session cannot contain /" if session.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/agent/sessions/#{session}/contexts/#{context}"
                end),
                "context:environment:location:project:session:user" => (proc do |project:, location:, environment:, user:, session:, context:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "environment cannot contain /" if environment.to_s.include? "/"
                  raise ::ArgumentError, "user cannot contain /" if user.to_s.include? "/"
                  raise ::ArgumentError, "session cannot contain /" if session.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/agent/environments/#{environment}/users/#{user}/sessions/#{session}/contexts/#{context}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Session resource string.
            #
            # @overload session_path(project:, session:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/agent/sessions/{session}`
            #
            #   @param project [String]
            #   @param session [String]
            #
            # @overload session_path(project:, environment:, user:, session:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/agent/environments/{environment}/users/{user}/sessions/{session}`
            #
            #   @param project [String]
            #   @param environment [String]
            #   @param user [String]
            #   @param session [String]
            #
            # @overload session_path(project:, location:, session:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/agent/sessions/{session}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param session [String]
            #
            # @overload session_path(project:, location:, environment:, user:, session:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/agent/environments/{environment}/users/{user}/sessions/{session}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param environment [String]
            #   @param user [String]
            #   @param session [String]
            #
            # @return [::String]
            def session_path **args
              resources = {
                "project:session" => (proc do |project:, session:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/agent/sessions/#{session}"
                end),
                "environment:project:session:user" => (proc do |project:, environment:, user:, session:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "environment cannot contain /" if environment.to_s.include? "/"
                  raise ::ArgumentError, "user cannot contain /" if user.to_s.include? "/"

                  "projects/#{project}/agent/environments/#{environment}/users/#{user}/sessions/#{session}"
                end),
                "location:project:session" => (proc do |project:, location:, session:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/agent/sessions/#{session}"
                end),
                "environment:location:project:session:user" => (proc do |project:, location:, environment:, user:, session:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "environment cannot contain /" if environment.to_s.include? "/"
                  raise ::ArgumentError, "user cannot contain /" if user.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/agent/environments/#{environment}/users/#{user}/sessions/#{session}"
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
