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

# [START bigquerydatatransfer_v1_generated_DataTransferService_DeleteTransferRun_sync]
require "google/cloud/bigquery/data_transfer/v1"

##
# Snippet for the delete_transfer_run call in the DataTransferService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigquery::DataTransfer::V1::DataTransferService::Client#delete_transfer_run.
# It may require modification in order to execute successfully.
#
def delete_transfer_run
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigquery::DataTransfer::V1::DataTransferService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigquery::DataTransfer::V1::DeleteTransferRunRequest.new

  # Call the delete_transfer_run method.
  result = client.delete_transfer_run request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END bigquerydatatransfer_v1_generated_DataTransferService_DeleteTransferRun_sync]
