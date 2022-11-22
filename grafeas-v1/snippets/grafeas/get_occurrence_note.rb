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

# [START grafeas_v1_generated_Grafeas_GetOccurrenceNote_sync]
require "grafeas/v1"

##
# Example demonstrating basic usage of
# Grafeas::V1::Grafeas::Client#get_occurrence_note
#
def get_occurrence_note
  # Create a client object. The client can be reused for multiple calls.
  client = Grafeas::V1::Grafeas::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Grafeas::V1::GetOccurrenceNoteRequest.new

  # Call the get_occurrence_note method.
  result = client.get_occurrence_note request

  # The returned object is of type Grafeas::V1::Note.
  p result
end
# [END grafeas_v1_generated_Grafeas_GetOccurrenceNote_sync]
