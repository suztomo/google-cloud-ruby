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


module Google
  module Api
    # A description of a log type. Example in YAML format:
    #
    #     - name: library.googleapis.com/activity_history
    #       description: The history of borrowing and returning library items.
    #       display_name: Activity
    #       labels:
    #       - key: /customer_id
    #         description: Identifier of a library customer
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the log. It must be less than 512 characters long and can
    #     include the following characters: upper- and lower-case alphanumeric
    #     characters [A-Za-z0-9], and punctuation characters including
    #     slash, underscore, hyphen, period [/_-.].
    # @!attribute [rw] labels
    #   @return [::Array<::Google::Api::LabelDescriptor>]
    #     The set of labels that are available to describe a specific log entry.
    #     Runtime requests that contain labels not specified here are
    #     considered invalid.
    # @!attribute [rw] description
    #   @return [::String]
    #     A human-readable description of this log. This information appears in
    #     the documentation and can contain details.
    # @!attribute [rw] display_name
    #   @return [::String]
    #     The human-readable name for this log. This information appears on
    #     the user interface and should be concise.
    class LogDescriptor
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
