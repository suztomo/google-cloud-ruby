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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/ids/v1/version"

require "google/cloud/ids/v1/ids/credentials"
require "google/cloud/ids/v1/ids/paths"
require "google/cloud/ids/v1/ids/operations"
require "google/cloud/ids/v1/ids/client"

module Google
  module Cloud
    module IDS
      module V1
        ##
        # The IDS Service
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/ids/v1/ids"
        #     client = ::Google::Cloud::IDS::V1::IDS::Client.new
        #
        module IDS
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "ids", "helpers.rb"
require "google/cloud/ids/v1/ids/helpers" if ::File.file? helper_path

