# frozen_string_literal: true

# Copyright 2023 Google LLC
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

# [START gameservices_v1_generated_GameServerDeploymentsService_FetchDeploymentState_sync]
require "google/cloud/gaming/v1"

##
# Snippet for the fetch_deployment_state call in the GameServerDeploymentsService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Gaming::V1::GameServerDeploymentsService::Client#fetch_deployment_state.
# It may require modification in order to execute successfully.
#
def fetch_deployment_state
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Gaming::V1::GameServerDeploymentsService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Gaming::V1::FetchDeploymentStateRequest.new

  # Call the fetch_deployment_state method.
  result = client.fetch_deployment_state request

  # The returned object is of type Google::Cloud::Gaming::V1::FetchDeploymentStateResponse.
  p result
end
# [END gameservices_v1_generated_GameServerDeploymentsService_FetchDeploymentState_sync]
