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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/run/v2/version"

require "google/cloud/run/v2/services/credentials"
require "google/cloud/run/v2/services/paths"
require "google/cloud/run/v2/services/operations"
require "google/cloud/run/v2/services/client"

module Google
  module Cloud
    module Run
      module V2
        ##
        # Cloud Run Service Control Plane API
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/run/v2/services"
        #     client = ::Google::Cloud::Run::V2::Services::Client.new
        #
        module Services
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "services", "helpers.rb"
require "google/cloud/run/v2/services/helpers" if ::File.file? helper_path
