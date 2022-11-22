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

# [START apigeeregistry_v1_generated_Registry_CreateApiVersion_sync]
require "google/cloud/apigee_registry/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::ApigeeRegistry::V1::Registry::Client#create_api_version
#
def create_api_version
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ApigeeRegistry::V1::Registry::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ApigeeRegistry::V1::CreateApiVersionRequest.new

  # Call the create_api_version method.
  result = client.create_api_version request

  # The returned object is of type Google::Cloud::ApigeeRegistry::V1::ApiVersion.
  p result
end
# [END apigeeregistry_v1_generated_Registry_CreateApiVersion_sync]
