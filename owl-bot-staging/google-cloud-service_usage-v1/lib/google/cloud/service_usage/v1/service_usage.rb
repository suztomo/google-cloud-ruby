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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/service_usage/v1/version"

require "google/cloud/service_usage/v1/service_usage/credentials"
require "google/cloud/service_usage/v1/service_usage/operations"
require "google/cloud/service_usage/v1/service_usage/client"
require "google/cloud/service_usage/v1/service_usage/rest"

module Google
  module Cloud
    module ServiceUsage
      module V1
        ##
        # Enables services that service consumers want to use on Google Cloud Platform,
        # lists the available or enabled services, or disables services that service
        # consumers no longer use.
        #
        # See [Service Usage API](https://cloud.google.com/service-usage/docs/overview)
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/service_usage/v1/service_usage"
        #     client = ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/service_usage/v1/service_usage/rest"
        #     client = ::Google::Cloud::ServiceUsage::V1::ServiceUsage::Rest::Client.new
        #
        module ServiceUsage
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "service_usage", "helpers.rb"
require "google/cloud/service_usage/v1/service_usage/helpers" if ::File.file? helper_path
