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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/networkconnectivity/v1/policy_based_routing_pb"
require "google/cloud/networkconnectivity/v1/policy_based_routing_services_pb"
require "google/cloud/network_connectivity/v1/policy_based_routing_service"

class ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_policy_based_routes
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::NetworkConnectivity::V1::ListPolicyBasedRoutesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_policy_based_routes_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_policy_based_routes, name
      assert_kind_of ::Google::Cloud::NetworkConnectivity::V1::ListPolicyBasedRoutesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_policy_based_routes_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_policy_based_routes({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_policy_based_routes parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_policy_based_routes ::Google::Cloud::NetworkConnectivity::V1::ListPolicyBasedRoutesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_policy_based_routes({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_policy_based_routes(::Google::Cloud::NetworkConnectivity::V1::ListPolicyBasedRoutesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_policy_based_routes_client_stub.call_rpc_count
    end
  end

  def test_get_policy_based_route
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_policy_based_route_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_policy_based_route, name
      assert_kind_of ::Google::Cloud::NetworkConnectivity::V1::GetPolicyBasedRouteRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_policy_based_route_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_policy_based_route({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_policy_based_route name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_policy_based_route ::Google::Cloud::NetworkConnectivity::V1::GetPolicyBasedRouteRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_policy_based_route({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_policy_based_route(::Google::Cloud::NetworkConnectivity::V1::GetPolicyBasedRouteRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_policy_based_route_client_stub.call_rpc_count
    end
  end

  def test_create_policy_based_route
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    policy_based_route_id = "hello world"
    policy_based_route = {}
    request_id = "hello world"

    create_policy_based_route_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_policy_based_route, name
      assert_kind_of ::Google::Cloud::NetworkConnectivity::V1::CreatePolicyBasedRouteRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["policy_based_route_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute), request["policy_based_route"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_policy_based_route_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_policy_based_route({ parent: parent, policy_based_route_id: policy_based_route_id, policy_based_route: policy_based_route, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_policy_based_route parent: parent, policy_based_route_id: policy_based_route_id, policy_based_route: policy_based_route, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_policy_based_route ::Google::Cloud::NetworkConnectivity::V1::CreatePolicyBasedRouteRequest.new(parent: parent, policy_based_route_id: policy_based_route_id, policy_based_route: policy_based_route, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_policy_based_route({ parent: parent, policy_based_route_id: policy_based_route_id, policy_based_route: policy_based_route, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_policy_based_route(::Google::Cloud::NetworkConnectivity::V1::CreatePolicyBasedRouteRequest.new(parent: parent, policy_based_route_id: policy_based_route_id, policy_based_route: policy_based_route, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_policy_based_route_client_stub.call_rpc_count
    end
  end

  def test_delete_policy_based_route
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_policy_based_route_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_policy_based_route, name
      assert_kind_of ::Google::Cloud::NetworkConnectivity::V1::DeletePolicyBasedRouteRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_policy_based_route_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_policy_based_route({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_policy_based_route name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_policy_based_route ::Google::Cloud::NetworkConnectivity::V1::DeletePolicyBasedRouteRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_policy_based_route({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_policy_based_route(::Google::Cloud::NetworkConnectivity::V1::DeletePolicyBasedRouteRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_policy_based_route_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Operations, client.operations_client
  end
end