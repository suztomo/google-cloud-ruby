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

require "google/cloud/dialogflow/cx/v3/version"

require "google/cloud/dialogflow/cx/v3/security_settings_service/credentials"
require "google/cloud/dialogflow/cx/v3/security_settings_service/paths"
require "google/cloud/dialogflow/cx/v3/security_settings_service/client"
require "google/cloud/dialogflow/cx/v3/security_settings_service/rest"

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          ##
          # Service for managing security settings for Dialogflow.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/dialogflow/cx/v3/security_settings_service"
          #     client = ::Google::Cloud::Dialogflow::CX::V3::SecuritySettingsService::Client.new
          #
          # @example Load this service and instantiate a REST client
          #
          #     require "google/cloud/dialogflow/cx/v3/security_settings_service/rest"
          #     client = ::Google::Cloud::Dialogflow::CX::V3::SecuritySettingsService::Rest::Client.new
          #
          module SecuritySettingsService
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "security_settings_service", "helpers.rb"
require "google/cloud/dialogflow/cx/v3/security_settings_service/helpers" if ::File.file? helper_path
