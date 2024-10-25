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
    module Dialogflow
      module CX
        module V3
          module SessionEntityTypes
            # Path helper methods for the SessionEntityTypes API.
            module Paths
              ##
              # Create a fully-qualified Session resource string.
              #
              # @overload session_path(project:, location:, agent:, session:)
              #   The resource will be in the following format:
              #
              #   `projects/{project}/locations/{location}/agents/{agent}/sessions/{session}`
              #
              #   @param project [String]
              #   @param location [String]
              #   @param agent [String]
              #   @param session [String]
              #
              # @overload session_path(project:, location:, agent:, environment:, session:)
              #   The resource will be in the following format:
              #
              #   `projects/{project}/locations/{location}/agents/{agent}/environments/{environment}/sessions/{session}`
              #
              #   @param project [String]
              #   @param location [String]
              #   @param agent [String]
              #   @param environment [String]
              #   @param session [String]
              #
              # @return [::String]
              def session_path **args
                resources = {
                  "agent:location:project:session" => (proc do |project:, location:, agent:, session:|
                    raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                    raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                    raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                    "projects/#{project}/locations/#{location}/agents/#{agent}/sessions/#{session}"
                  end),
                  "agent:environment:location:project:session" => (proc do |project:, location:, agent:, environment:, session:|
                    raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                    raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                    raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                    raise ::ArgumentError, "environment cannot contain /" if environment.to_s.include? "/"

                    "projects/#{project}/locations/#{location}/agents/#{agent}/environments/#{environment}/sessions/#{session}"
                  end)
                }

                resource = resources[args.keys.sort.join(":")]
                raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
                resource.call(**args)
              end

              ##
              # Create a fully-qualified SessionEntityType resource string.
              #
              # @overload session_entity_type_path(project:, location:, agent:, session:, entity_type:)
              #   The resource will be in the following format:
              #
              #   `projects/{project}/locations/{location}/agents/{agent}/sessions/{session}/entityTypes/{entity_type}`
              #
              #   @param project [String]
              #   @param location [String]
              #   @param agent [String]
              #   @param session [String]
              #   @param entity_type [String]
              #
              # @overload session_entity_type_path(project:, location:, agent:, environment:, session:, entity_type:)
              #   The resource will be in the following format:
              #
              #   `projects/{project}/locations/{location}/agents/{agent}/environments/{environment}/sessions/{session}/entityTypes/{entity_type}`
              #
              #   @param project [String]
              #   @param location [String]
              #   @param agent [String]
              #   @param environment [String]
              #   @param session [String]
              #   @param entity_type [String]
              #
              # @return [::String]
              def session_entity_type_path **args
                resources = {
                  "agent:entity_type:location:project:session" => (proc do |project:, location:, agent:, session:, entity_type:|
                    raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                    raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                    raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                    raise ::ArgumentError, "session cannot contain /" if session.to_s.include? "/"

                    "projects/#{project}/locations/#{location}/agents/#{agent}/sessions/#{session}/entityTypes/#{entity_type}"
                  end),
                  "agent:entity_type:environment:location:project:session" => (proc do |project:, location:, agent:, environment:, session:, entity_type:|
                    raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                    raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                    raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                    raise ::ArgumentError, "environment cannot contain /" if environment.to_s.include? "/"
                    raise ::ArgumentError, "session cannot contain /" if session.to_s.include? "/"

                    "projects/#{project}/locations/#{location}/agents/#{agent}/environments/#{environment}/sessions/#{session}/entityTypes/#{entity_type}"
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
end
