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

# [START baremetalsolution_v2_generated_BareMetalSolution_ListNfsShares_sync]
require "google/cloud/bare_metal_solution/v2"

##
# Example demonstrating basic usage of
# Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client#list_nfs_shares
#
def list_nfs_shares
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::BareMetalSolution::V2::ListNfsSharesRequest.new

  # Call the list_nfs_shares method.
  result = client.list_nfs_shares request

  # The returned object is of type Gapic::PagedEnumerable. You can
  # iterate over all elements by calling #each, and the enumerable
  # will lazily make API calls to fetch subsequent pages. Other
  # methods are also available for managing paging directly.
  result.each do |response|
    # Each element is of type ::Google::Cloud::BareMetalSolution::V2::NfsShare.
    p response
  end
end
# [END baremetalsolution_v2_generated_BareMetalSolution_ListNfsShares_sync]
