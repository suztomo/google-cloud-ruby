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
          module Experiments
            # Path helper methods for the Experiments API.
            module Paths
              ##
              # Create a fully-qualified Environment resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/environments/{environment}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param environment [String]
              #
              # @return [::String]
              def environment_path project:, location:, agent:, environment:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/environments/#{environment}"
              end

              ##
              # Create a fully-qualified Experiment resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/environments/{environment}/experiments/{experiment}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param environment [String]
              # @param experiment [String]
              #
              # @return [::String]
              def experiment_path project:, location:, agent:, environment:, experiment:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                raise ::ArgumentError, "environment cannot contain /" if environment.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/environments/#{environment}/experiments/#{experiment}"
              end

              ##
              # Create a fully-qualified Version resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/flows/{flow}/versions/{version}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param flow [String]
              # @param version [String]
              #
              # @return [::String]
              def version_path project:, location:, agent:, flow:, version:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                raise ::ArgumentError, "flow cannot contain /" if flow.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/flows/#{flow}/versions/#{version}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
