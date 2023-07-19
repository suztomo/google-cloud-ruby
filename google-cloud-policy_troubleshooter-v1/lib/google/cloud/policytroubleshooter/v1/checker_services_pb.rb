# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/policytroubleshooter/v1/checker.proto for package 'Google.Cloud.PolicyTroubleshooter.V1'
# Original file comments:
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/policytroubleshooter/v1/checker_pb'

module Google
  module Cloud
    module PolicyTroubleshooter
      module V1
        module IamChecker
          # IAM Policy Troubleshooter service.
          #
          # This service helps you troubleshoot access issues for Google Cloud resources.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.policytroubleshooter.v1.IamChecker'

            # Checks whether a principal has a specific permission for a specific
            # resource, and explains why the principal does or does not have that
            # permission.
            rpc :TroubleshootIamPolicy, ::Google::Cloud::PolicyTroubleshooter::V1::TroubleshootIamPolicyRequest, ::Google::Cloud::PolicyTroubleshooter::V1::TroubleshootIamPolicyResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
