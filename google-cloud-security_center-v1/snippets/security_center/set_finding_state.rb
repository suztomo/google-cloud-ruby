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

# [START securitycenter_v1_generated_SecurityCenter_SetFindingState_sync]
require "google/cloud/security_center/v1"

##
# Snippet for the set_finding_state call in the SecurityCenter service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::SecurityCenter::V1::SecurityCenter::Client#set_finding_state.
#
def set_finding_state
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::SecurityCenter::V1::SetFindingStateRequest.new

  # Call the set_finding_state method.
  result = client.set_finding_state request

  # The returned object is of type Google::Cloud::SecurityCenter::V1::Finding.
  p result
end
# [END securitycenter_v1_generated_SecurityCenter_SetFindingState_sync]
