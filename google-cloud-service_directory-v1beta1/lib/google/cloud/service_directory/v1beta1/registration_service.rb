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

require "google/cloud/service_directory/v1beta1/version"

require "google/cloud/service_directory/v1beta1/registration_service/credentials"
require "google/cloud/service_directory/v1beta1/registration_service/paths"
require "google/cloud/service_directory/v1beta1/registration_service/client"
require "google/cloud/service_directory/v1beta1/registration_service/rest"

module Google
  module Cloud
    module ServiceDirectory
      module V1beta1
        ##
        # Service Directory API for registering services. It defines the following
        # resource model:
        #
        # - The API has a collection of
        # {::Google::Cloud::ServiceDirectory::V1beta1::Namespace Namespace}
        # resources, named `projects/*/locations/*/namespaces/*`.
        #
        # - Each Namespace has a collection of
        # {::Google::Cloud::ServiceDirectory::V1beta1::Service Service} resources, named
        # `projects/*/locations/*/namespaces/*/services/*`.
        #
        # - Each Service has a collection of
        # {::Google::Cloud::ServiceDirectory::V1beta1::Endpoint Endpoint}
        # resources, named
        # `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/service_directory/v1beta1/registration_service"
        #     client = ::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/service_directory/v1beta1/registration_service/rest"
        #     client = ::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Rest::Client.new
        #
        module RegistrationService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "registration_service", "helpers.rb"
require "google/cloud/service_directory/v1beta1/registration_service/helpers" if ::File.file? helper_path
