# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/security/publicca/v1beta1/service_pb"

module Google
  module Cloud
    module Security
      module PublicCA
        module V1beta1
          module PublicCertificateAuthorityService
            module Rest
              ##
              # REST service stub for the PublicCertificateAuthorityService service.
              # Service stub contains baseline method implementations
              # including transcoding, making the REST call, and deserialing the response.
              #
              class ServiceStub
                def initialize endpoint:, credentials:
                  # These require statements are intentionally placed here to initialize
                  # the REST modules only when it's required.
                  require "gapic/rest"

                  @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials,
                                                               numeric_enums: true,
                                                               raise_faraday_errors: false
                end

                ##
                # Baseline implementation for the create_external_account_key REST call
                #
                # @param request_pb [::Google::Cloud::Security::PublicCA::V1beta1::CreateExternalAccountKeyRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Security::PublicCA::V1beta1::ExternalAccountKey]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Security::PublicCA::V1beta1::ExternalAccountKey]
                #   A result object deserialized from the server's reply
                def create_external_account_key request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_external_account_key_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Security::PublicCA::V1beta1::ExternalAccountKey.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_external_account_key REST call
                #
                # @param request_pb [::Google::Cloud::Security::PublicCA::V1beta1::CreateExternalAccountKeyRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_external_account_key_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1beta1/{parent}/externalAccountKeys",
                                                            body: "external_account_key",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end
              end
            end
          end
        end
      end
    end
  end
end
