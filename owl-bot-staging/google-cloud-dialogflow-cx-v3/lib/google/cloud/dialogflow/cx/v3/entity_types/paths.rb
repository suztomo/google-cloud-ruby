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
          module EntityTypes
            # Path helper methods for the EntityTypes API.
            module Paths
              ##
              # Create a fully-qualified Agent resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              #
              # @return [::String]
              def agent_path project:, location:, agent:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}"
              end

              ##
              # Create a fully-qualified EntityType resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/entityTypes/{entity_type}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param entity_type [String]
              #
              # @return [::String]
              def entity_type_path project:, location:, agent:, entity_type:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/entityTypes/#{entity_type}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
