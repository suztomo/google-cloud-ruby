# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/errors"
require "google/dataflow/v1beta3/templates_pb"

module Google
  module Cloud
    module Dataflow
      module V1beta3
        module TemplatesService
          ##
          # Client for the TemplatesService service.
          #
          # Provides a method to create Cloud Dataflow jobs from templates.
          #
          class Client
            # @private
            attr_reader :templates_service_stub

            ##
            # Configure the TemplatesService Client class.
            #
            # See {::Google::Cloud::Dataflow::V1beta3::TemplatesService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all TemplatesService clients
            #   ::Google::Cloud::Dataflow::V1beta3::TemplatesService::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Dataflow", "V1beta3"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 60.0

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the TemplatesService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Dataflow::V1beta3::TemplatesService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new TemplatesService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Dataflow::V1beta3::TemplatesService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Dataflow::V1beta3::TemplatesService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the TemplatesService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/dataflow/v1beta3/templates_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @templates_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Dataflow::V1beta3::TemplatesService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Creates a Cloud Dataflow job from a template.
            #
            # @overload create_job_from_template(request, options = nil)
            #   Pass arguments to `create_job_from_template` via a request object, either of type
            #   {::Google::Cloud::Dataflow::V1beta3::CreateJobFromTemplateRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataflow::V1beta3::CreateJobFromTemplateRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_job_from_template(project_id: nil, job_name: nil, gcs_path: nil, parameters: nil, environment: nil, location: nil)
            #   Pass arguments to `create_job_from_template` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param project_id [::String]
            #     Required. The ID of the Cloud Platform project that the job belongs to.
            #   @param job_name [::String]
            #     Required. The job name to use for the created job.
            #   @param gcs_path [::String]
            #     Required. A Cloud Storage path to the template from which to
            #     create the job.
            #     Must be a valid Cloud Storage URL, beginning with `gs://`.
            #   @param parameters [::Hash{::String => ::String}]
            #     The runtime parameters to pass to the job.
            #   @param environment [::Google::Cloud::Dataflow::V1beta3::RuntimeEnvironment, ::Hash]
            #     The runtime environment for the job.
            #   @param location [::String]
            #     The [regional endpoint]
            #     (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to
            #     which to direct the request.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Dataflow::V1beta3::Job]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Dataflow::V1beta3::Job]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/dataflow/v1beta3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Dataflow::V1beta3::TemplatesService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Dataflow::V1beta3::CreateJobFromTemplateRequest.new
            #
            #   # Call the create_job_from_template method.
            #   result = client.create_job_from_template request
            #
            #   # The returned object is of type Google::Cloud::Dataflow::V1beta3::Job.
            #   p result
            #
            def create_job_from_template request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataflow::V1beta3::CreateJobFromTemplateRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_job_from_template.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataflow::V1beta3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.project_id
                header_params["project_id"] = request.project_id
              end
              if request.location
                header_params["location"] = request.location
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_job_from_template.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_job_from_template.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @templates_service_stub.call_rpc :create_job_from_template, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Launch a template.
            #
            # @overload launch_template(request, options = nil)
            #   Pass arguments to `launch_template` via a request object, either of type
            #   {::Google::Cloud::Dataflow::V1beta3::LaunchTemplateRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataflow::V1beta3::LaunchTemplateRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload launch_template(project_id: nil, validate_only: nil, gcs_path: nil, dynamic_template: nil, launch_parameters: nil, location: nil)
            #   Pass arguments to `launch_template` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param project_id [::String]
            #     Required. The ID of the Cloud Platform project that the job belongs to.
            #   @param validate_only [::Boolean]
            #     If true, the request is validated but not actually executed.
            #     Defaults to false.
            #   @param gcs_path [::String]
            #     A Cloud Storage path to the template from which to create
            #     the job.
            #     Must be valid Cloud Storage URL, beginning with 'gs://'.
            #   @param dynamic_template [::Google::Cloud::Dataflow::V1beta3::DynamicTemplateLaunchParams, ::Hash]
            #     Params for launching a dynamic template.
            #   @param launch_parameters [::Google::Cloud::Dataflow::V1beta3::LaunchTemplateParameters, ::Hash]
            #     The parameters of the template to launch. This should be part of the
            #     body of the POST request.
            #   @param location [::String]
            #     The [regional endpoint]
            #     (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to
            #     which to direct the request.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Dataflow::V1beta3::LaunchTemplateResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Dataflow::V1beta3::LaunchTemplateResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/dataflow/v1beta3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Dataflow::V1beta3::TemplatesService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Dataflow::V1beta3::LaunchTemplateRequest.new
            #
            #   # Call the launch_template method.
            #   result = client.launch_template request
            #
            #   # The returned object is of type Google::Cloud::Dataflow::V1beta3::LaunchTemplateResponse.
            #   p result
            #
            def launch_template request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataflow::V1beta3::LaunchTemplateRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.launch_template.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataflow::V1beta3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.project_id
                header_params["project_id"] = request.project_id
              end
              if request.location
                header_params["location"] = request.location
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.launch_template.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.launch_template.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @templates_service_stub.call_rpc :launch_template, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Get the template associated with a template.
            #
            # @overload get_template(request, options = nil)
            #   Pass arguments to `get_template` via a request object, either of type
            #   {::Google::Cloud::Dataflow::V1beta3::GetTemplateRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dataflow::V1beta3::GetTemplateRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_template(project_id: nil, gcs_path: nil, view: nil, location: nil)
            #   Pass arguments to `get_template` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param project_id [::String]
            #     Required. The ID of the Cloud Platform project that the job belongs to.
            #   @param gcs_path [::String]
            #     Required. A Cloud Storage path to the template from which to
            #     create the job.
            #     Must be valid Cloud Storage URL, beginning with 'gs://'.
            #   @param view [::Google::Cloud::Dataflow::V1beta3::GetTemplateRequest::TemplateView]
            #     The view to retrieve. Defaults to METADATA_ONLY.
            #   @param location [::String]
            #     The [regional endpoint]
            #     (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to
            #     which to direct the request.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Dataflow::V1beta3::GetTemplateResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Dataflow::V1beta3::GetTemplateResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/dataflow/v1beta3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Dataflow::V1beta3::TemplatesService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Dataflow::V1beta3::GetTemplateRequest.new
            #
            #   # Call the get_template method.
            #   result = client.get_template request
            #
            #   # The returned object is of type Google::Cloud::Dataflow::V1beta3::GetTemplateResponse.
            #   p result
            #
            def get_template request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataflow::V1beta3::GetTemplateRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_template.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dataflow::V1beta3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.project_id
                header_params["project_id"] = request.project_id
              end
              if request.location
                header_params["location"] = request.location
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_template.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_template.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @templates_service_stub.call_rpc :get_template, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the TemplatesService API.
            #
            # This class represents the configuration for TemplatesService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Dataflow::V1beta3::TemplatesService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # create_job_from_template to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Dataflow::V1beta3::TemplatesService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_job_from_template.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Dataflow::V1beta3::TemplatesService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_job_from_template.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"dataflow.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "dataflow.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the TemplatesService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `create_job_from_template`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_job_from_template
                ##
                # RPC-specific configuration for `launch_template`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :launch_template
                ##
                # RPC-specific configuration for `get_template`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_template

                # @private
                def initialize parent_rpcs = nil
                  create_job_from_template_config = parent_rpcs.create_job_from_template if parent_rpcs.respond_to? :create_job_from_template
                  @create_job_from_template = ::Gapic::Config::Method.new create_job_from_template_config
                  launch_template_config = parent_rpcs.launch_template if parent_rpcs.respond_to? :launch_template
                  @launch_template = ::Gapic::Config::Method.new launch_template_config
                  get_template_config = parent_rpcs.get_template if parent_rpcs.respond_to? :get_template
                  @get_template = ::Gapic::Config::Method.new get_template_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
