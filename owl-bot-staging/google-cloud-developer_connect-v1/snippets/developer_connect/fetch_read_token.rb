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

# [START developerconnect_v1_generated_DeveloperConnect_FetchReadToken_sync]
require "google/cloud/developer_connect/v1"

##
# Snippet for the fetch_read_token call in the DeveloperConnect service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::DeveloperConnect::V1::DeveloperConnect::Client#fetch_read_token.
#
def fetch_read_token
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::DeveloperConnect::V1::DeveloperConnect::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::DeveloperConnect::V1::FetchReadTokenRequest.new

  # Call the fetch_read_token method.
  result = client.fetch_read_token request

  # The returned object is of type Google::Cloud::DeveloperConnect::V1::FetchReadTokenResponse.
  p result
end
# [END developerconnect_v1_generated_DeveloperConnect_FetchReadToken_sync]
