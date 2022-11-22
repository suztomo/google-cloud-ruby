# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module Bigquery
      module AnalyticsHub
        module V1
          module AnalyticsHubService
            # Path helper methods for the AnalyticsHubService API.
            module Paths
              ##
              # Create a fully-qualified DataExchange resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/dataExchanges/{data_exchange}`
              #
              # @param project [String]
              # @param location [String]
              # @param data_exchange [String]
              #
              # @return [::String]
              def data_exchange_path project:, location:, data_exchange:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                "projects/#{project}/locations/#{location}/dataExchanges/#{data_exchange}"
              end

              ##
              # Create a fully-qualified Dataset resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/datasets/{dataset}`
              #
              # @param project [String]
              # @param dataset [String]
              #
              # @return [::String]
              def dataset_path project:, dataset:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                "projects/#{project}/datasets/#{dataset}"
              end

              ##
              # Create a fully-qualified Listing resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/dataExchanges/{data_exchange}/listings/{listing}`
              #
              # @param project [String]
              # @param location [String]
              # @param data_exchange [String]
              # @param listing [String]
              #
              # @return [::String]
              def listing_path project:, location:, data_exchange:, listing:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "data_exchange cannot contain /" if data_exchange.to_s.include? "/"

                "projects/#{project}/locations/#{location}/dataExchanges/#{data_exchange}/listings/#{listing}"
              end

              ##
              # Create a fully-qualified Location resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}`
              #
              # @param project [String]
              # @param location [String]
              #
              # @return [::String]
              def location_path project:, location:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                "projects/#{project}/locations/#{location}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
