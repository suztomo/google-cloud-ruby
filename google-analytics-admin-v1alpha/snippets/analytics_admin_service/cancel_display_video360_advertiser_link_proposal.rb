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

# [START analyticsadmin_v1alpha_generated_AnalyticsAdminService_CancelDisplayVideo360AdvertiserLinkProposal_sync]
require "google/analytics/admin/v1alpha"

##
# Example demonstrating basic usage of
# Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client#cancel_display_video360_advertiser_link_proposal
#
def cancel_display_video360_advertiser_link_proposal
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Analytics::Admin::V1alpha::CancelDisplayVideo360AdvertiserLinkProposalRequest.new

  # Call the cancel_display_video360_advertiser_link_proposal method.
  result = client.cancel_display_video360_advertiser_link_proposal request

  # The returned object is of type Google::Analytics::Admin::V1alpha::DisplayVideo360AdvertiserLinkProposal.
  p result
end
# [END analyticsadmin_v1alpha_generated_AnalyticsAdminService_CancelDisplayVideo360AdvertiserLinkProposal_sync]
