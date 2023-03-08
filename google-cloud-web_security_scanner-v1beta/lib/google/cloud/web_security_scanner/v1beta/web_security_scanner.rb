# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/web_security_scanner/v1beta/version"

require "google/cloud/web_security_scanner/v1beta/web_security_scanner/credentials"
require "google/cloud/web_security_scanner/v1beta/web_security_scanner/paths"
require "google/cloud/web_security_scanner/v1beta/web_security_scanner/client"
require "google/cloud/web_security_scanner/v1beta/web_security_scanner/rest"

module Google
  module Cloud
    module WebSecurityScanner
      module V1beta
        ##
        # Cloud Web Security Scanner Service identifies security vulnerabilities in web
        # applications hosted on Google Cloud Platform. It crawls your application, and
        # attempts to exercise as many user inputs and event handlers as possible.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/web_security_scanner/v1beta/web_security_scanner"
        #     client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/web_security_scanner/v1beta/web_security_scanner/rest"
        #     client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new
        #
        module WebSecurityScanner
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "web_security_scanner", "helpers.rb"
require "google/cloud/web_security_scanner/v1beta/web_security_scanner/helpers" if ::File.file? helper_path
