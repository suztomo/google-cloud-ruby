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

# [START servicedirectory_v1_generated_RegistrationService_GetService_sync]
require "google/cloud/service_directory/v1"

##
# Snippet for the get_service call in the RegistrationService service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::ServiceDirectory::V1::RegistrationService::Client#get_service.
#
def get_service
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ServiceDirectory::V1::RegistrationService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ServiceDirectory::V1::GetServiceRequest.new

  # Call the get_service method.
  result = client.get_service request

  # The returned object is of type Google::Cloud::ServiceDirectory::V1::Service.
  p result
end
# [END servicedirectory_v1_generated_RegistrationService_GetService_sync]
