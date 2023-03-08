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

require "google/iam/credentials/v1/version"

require "google/iam/credentials/v1/iam_credentials/credentials"
require "google/iam/credentials/v1/iam_credentials/paths"
require "google/iam/credentials/v1/iam_credentials/client"
require "google/iam/credentials/v1/iam_credentials/rest"

module Google
  module Iam
    module Credentials
      module V1
        ##
        # A service account is a special type of Google account that belongs to your
        # application or a virtual machine (VM), instead of to an individual end user.
        # Your application assumes the identity of the service account to call Google
        # APIs, so that the users aren't directly involved.
        #
        # Service account credentials are used to temporarily assume the identity
        # of the service account. Supported credential types include OAuth 2.0 access
        # tokens, OpenID Connect ID tokens, self-signed JSON Web Tokens (JWTs), and
        # more.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/iam/credentials/v1/iam_credentials"
        #     client = ::Google::Iam::Credentials::V1::IAMCredentials::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/iam/credentials/v1/iam_credentials/rest"
        #     client = ::Google::Iam::Credentials::V1::IAMCredentials::Rest::Client.new
        #
        module IAMCredentials
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "iam_credentials", "helpers.rb"
require "google/iam/credentials/v1/iam_credentials/helpers" if ::File.file? helper_path
