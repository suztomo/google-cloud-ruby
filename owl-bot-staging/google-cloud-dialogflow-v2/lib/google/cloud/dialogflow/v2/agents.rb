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

require "google/cloud/dialogflow/v2/version"

require "google/cloud/dialogflow/v2/agents/credentials"
require "google/cloud/dialogflow/v2/agents/paths"
require "google/cloud/dialogflow/v2/agents/operations"
require "google/cloud/dialogflow/v2/agents/client"
require "google/cloud/dialogflow/v2/agents/rest"

module Google
  module Cloud
    module Dialogflow
      module V2
        ##
        # Service for managing {::Google::Cloud::Dialogflow::V2::Agent Agents}.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/dialogflow/v2/agents"
        #     client = ::Google::Cloud::Dialogflow::V2::Agents::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/dialogflow/v2/agents/rest"
        #     client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new
        #
        module Agents
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "agents", "helpers.rb"
require "google/cloud/dialogflow/v2/agents/helpers" if ::File.file? helper_path
