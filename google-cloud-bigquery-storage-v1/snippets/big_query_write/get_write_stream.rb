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

# [START bigquerystorage_v1_generated_BigQueryWrite_GetWriteStream_sync]
require "google/cloud/bigquery/storage/v1"

##
# Snippet for the get_write_stream call in the BigQueryWrite service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client#get_write_stream.
# It may require modification in order to execute successfully.
#
def get_write_stream
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigquery::Storage::V1::GetWriteStreamRequest.new

  # Call the get_write_stream method.
  result = client.get_write_stream request

  # The returned object is of type Google::Cloud::Bigquery::Storage::V1::WriteStream.
  p result
end
# [END bigquerystorage_v1_generated_BigQueryWrite_GetWriteStream_sync]
