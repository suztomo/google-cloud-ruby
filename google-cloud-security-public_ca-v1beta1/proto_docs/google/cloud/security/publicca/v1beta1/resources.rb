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


module Google
  module Cloud
    module Security
      module PublicCA
        module V1beta1
          # A representation of an ExternalAccountKey used for [external account
          # binding](https://tools.ietf.org/html/rfc8555#section-7.3.4) within ACME.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. Resource name.
          #     projects/\\{project}/locations/\\{location}/externalAccountKeys/\\{key_id}
          # @!attribute [r] key_id
          #   @return [::String]
          #     Output only. Key ID.
          #     It is generated by the PublicCertificateAuthorityService
          #     when the ExternalAccountKey is created
          # @!attribute [r] b64_mac_key
          #   @return [::String]
          #     Output only. Base64-URL-encoded HS256 key.
          #     It is generated by the PublicCertificateAuthorityService
          #     when the ExternalAccountKey is created
          class ExternalAccountKey
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end

