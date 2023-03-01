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

require "google/devtools/cloudbuild/v2/repositories_pb"
require "google/devtools/cloudbuild/v2/repositories_services_pb"
require "google/cloud/build/v2/repository_manager"

class ::Google::Cloud::Build::V2::RepositoryManager::ClientTest < Minitest::Test
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

  def test_create_connection
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    connection = {}
    connection_id = "hello world"

    create_connection_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_connection, name
      assert_kind_of ::Google::Cloud::Build::V2::CreateConnectionRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Build::V2::Connection), request["connection"]
      assert_equal "hello world", request["connection_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_connection_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_connection({ parent: parent, connection: connection, connection_id: connection_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_connection parent: parent, connection: connection, connection_id: connection_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_connection ::Google::Cloud::Build::V2::CreateConnectionRequest.new(parent: parent, connection: connection, connection_id: connection_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_connection({ parent: parent, connection: connection, connection_id: connection_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_connection(::Google::Cloud::Build::V2::CreateConnectionRequest.new(parent: parent, connection: connection, connection_id: connection_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_connection_client_stub.call_rpc_count
    end
  end

  def test_get_connection
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Build::V2::Connection.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_connection_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_connection, name
      assert_kind_of ::Google::Cloud::Build::V2::GetConnectionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_connection_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_connection({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_connection name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_connection ::Google::Cloud::Build::V2::GetConnectionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_connection({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_connection(::Google::Cloud::Build::V2::GetConnectionRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_connection_client_stub.call_rpc_count
    end
  end

  def test_list_connections
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Build::V2::ListConnectionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_connections_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_connections, name
      assert_kind_of ::Google::Cloud::Build::V2::ListConnectionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_connections_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_connections({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_connections parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_connections ::Google::Cloud::Build::V2::ListConnectionsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_connections({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_connections(::Google::Cloud::Build::V2::ListConnectionsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_connections_client_stub.call_rpc_count
    end
  end

  def test_update_connection
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    connection = {}
    update_mask = {}
    allow_missing = true
    etag = "hello world"

    update_connection_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_connection, name
      assert_kind_of ::Google::Cloud::Build::V2::UpdateConnectionRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Build::V2::Connection), request["connection"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal true, request["allow_missing"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_connection_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_connection({ connection: connection, update_mask: update_mask, allow_missing: allow_missing, etag: etag }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_connection connection: connection, update_mask: update_mask, allow_missing: allow_missing, etag: etag do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_connection ::Google::Cloud::Build::V2::UpdateConnectionRequest.new(connection: connection, update_mask: update_mask, allow_missing: allow_missing, etag: etag) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_connection({ connection: connection, update_mask: update_mask, allow_missing: allow_missing, etag: etag }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_connection(::Google::Cloud::Build::V2::UpdateConnectionRequest.new(connection: connection, update_mask: update_mask, allow_missing: allow_missing, etag: etag), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_connection_client_stub.call_rpc_count
    end
  end

  def test_delete_connection
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"
    validate_only = true

    delete_connection_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_connection, name
      assert_kind_of ::Google::Cloud::Build::V2::DeleteConnectionRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["etag"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_connection_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_connection({ name: name, etag: etag, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_connection name: name, etag: etag, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_connection ::Google::Cloud::Build::V2::DeleteConnectionRequest.new(name: name, etag: etag, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_connection({ name: name, etag: etag, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_connection(::Google::Cloud::Build::V2::DeleteConnectionRequest.new(name: name, etag: etag, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_connection_client_stub.call_rpc_count
    end
  end

  def test_create_repository
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    repository = {}
    repository_id = "hello world"

    create_repository_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_repository, name
      assert_kind_of ::Google::Cloud::Build::V2::CreateRepositoryRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Build::V2::Repository), request["repository"]
      assert_equal "hello world", request["repository_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_repository_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_repository({ parent: parent, repository: repository, repository_id: repository_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_repository parent: parent, repository: repository, repository_id: repository_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_repository ::Google::Cloud::Build::V2::CreateRepositoryRequest.new(parent: parent, repository: repository, repository_id: repository_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_repository({ parent: parent, repository: repository, repository_id: repository_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_repository(::Google::Cloud::Build::V2::CreateRepositoryRequest.new(parent: parent, repository: repository, repository_id: repository_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_repository_client_stub.call_rpc_count
    end
  end

  def test_batch_create_repositories
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    requests = [{}]

    batch_create_repositories_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_create_repositories, name
      assert_kind_of ::Google::Cloud::Build::V2::BatchCreateRepositoriesRequest, request
      assert_equal "hello world", request["parent"]
      assert_kind_of ::Google::Cloud::Build::V2::CreateRepositoryRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_create_repositories_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_create_repositories({ parent: parent, requests: requests }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_create_repositories parent: parent, requests: requests do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_create_repositories ::Google::Cloud::Build::V2::BatchCreateRepositoriesRequest.new(parent: parent, requests: requests) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_create_repositories({ parent: parent, requests: requests }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_create_repositories(::Google::Cloud::Build::V2::BatchCreateRepositoriesRequest.new(parent: parent, requests: requests), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_create_repositories_client_stub.call_rpc_count
    end
  end

  def test_get_repository
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Build::V2::Repository.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_repository_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_repository, name
      assert_kind_of ::Google::Cloud::Build::V2::GetRepositoryRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_repository_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_repository({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_repository name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_repository ::Google::Cloud::Build::V2::GetRepositoryRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_repository({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_repository(::Google::Cloud::Build::V2::GetRepositoryRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_repository_client_stub.call_rpc_count
    end
  end

  def test_list_repositories
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Build::V2::ListRepositoriesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_repositories_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_repositories, name
      assert_kind_of ::Google::Cloud::Build::V2::ListRepositoriesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_repositories_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_repositories({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_repositories parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_repositories ::Google::Cloud::Build::V2::ListRepositoriesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_repositories({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_repositories(::Google::Cloud::Build::V2::ListRepositoriesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_repositories_client_stub.call_rpc_count
    end
  end

  def test_delete_repository
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"
    validate_only = true

    delete_repository_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_repository, name
      assert_kind_of ::Google::Cloud::Build::V2::DeleteRepositoryRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["etag"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_repository_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_repository({ name: name, etag: etag, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_repository name: name, etag: etag, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_repository ::Google::Cloud::Build::V2::DeleteRepositoryRequest.new(name: name, etag: etag, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_repository({ name: name, etag: etag, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_repository(::Google::Cloud::Build::V2::DeleteRepositoryRequest.new(name: name, etag: etag, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_repository_client_stub.call_rpc_count
    end
  end

  def test_fetch_read_write_token
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Build::V2::FetchReadWriteTokenResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    repository = "hello world"

    fetch_read_write_token_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :fetch_read_write_token, name
      assert_kind_of ::Google::Cloud::Build::V2::FetchReadWriteTokenRequest, request
      assert_equal "hello world", request["repository"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, fetch_read_write_token_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.fetch_read_write_token({ repository: repository }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.fetch_read_write_token repository: repository do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.fetch_read_write_token ::Google::Cloud::Build::V2::FetchReadWriteTokenRequest.new(repository: repository) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.fetch_read_write_token({ repository: repository }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.fetch_read_write_token(::Google::Cloud::Build::V2::FetchReadWriteTokenRequest.new(repository: repository), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, fetch_read_write_token_client_stub.call_rpc_count
    end
  end

  def test_fetch_read_token
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Build::V2::FetchReadTokenResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    repository = "hello world"

    fetch_read_token_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :fetch_read_token, name
      assert_kind_of ::Google::Cloud::Build::V2::FetchReadTokenRequest, request
      assert_equal "hello world", request["repository"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, fetch_read_token_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.fetch_read_token({ repository: repository }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.fetch_read_token repository: repository do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.fetch_read_token ::Google::Cloud::Build::V2::FetchReadTokenRequest.new(repository: repository) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.fetch_read_token({ repository: repository }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.fetch_read_token(::Google::Cloud::Build::V2::FetchReadTokenRequest.new(repository: repository), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, fetch_read_token_client_stub.call_rpc_count
    end
  end

  def test_fetch_linkable_repositories
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Build::V2::FetchLinkableRepositoriesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    connection = "hello world"
    page_size = 42
    page_token = "hello world"

    fetch_linkable_repositories_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :fetch_linkable_repositories, name
      assert_kind_of ::Google::Cloud::Build::V2::FetchLinkableRepositoriesRequest, request
      assert_equal "hello world", request["connection"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, fetch_linkable_repositories_client_stub do
      # Create client
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.fetch_linkable_repositories({ connection: connection, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.fetch_linkable_repositories connection: connection, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.fetch_linkable_repositories ::Google::Cloud::Build::V2::FetchLinkableRepositoriesRequest.new(connection: connection, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.fetch_linkable_repositories({ connection: connection, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.fetch_linkable_repositories(::Google::Cloud::Build::V2::FetchLinkableRepositoriesRequest.new(connection: connection, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, fetch_linkable_repositories_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Build::V2::RepositoryManager::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Build::V2::RepositoryManager::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Build::V2::RepositoryManager::Operations, client.operations_client
  end
end
