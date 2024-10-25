# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/discoveryengine/v1/search_service.proto for package 'Google.Cloud.DiscoveryEngine.V1'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/discoveryengine/v1/search_service_pb'

module Google
  module Cloud
    module DiscoveryEngine
      module V1
        module SearchService
          # Service for search.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.discoveryengine.v1.SearchService'

            # Performs a search.
            rpc :Search, ::Google::Cloud::DiscoveryEngine::V1::SearchRequest, ::Google::Cloud::DiscoveryEngine::V1::SearchResponse
            # Performs a search. Similar to the
            # [SearchService.Search][google.cloud.discoveryengine.v1.SearchService.Search]
            # method, but a lite version that allows API key for authentication, where
            # OAuth and IAM checks are not required.
            #
            # Only public website search is supported by this method. If data stores and
            # engines not associated with public website search are specified, a
            # `FAILED_PRECONDITION` error is returned.
            #
            # This method can be used for easy onboarding without having to implement an
            # authentication backend. However, it is strongly recommended to use
            # [SearchService.Search][google.cloud.discoveryengine.v1.SearchService.Search]
            # instead with required OAuth and IAM checks to provide better data security.
            rpc :SearchLite, ::Google::Cloud::DiscoveryEngine::V1::SearchRequest, ::Google::Cloud::DiscoveryEngine::V1::SearchResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
