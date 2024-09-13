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

require "helper"
require "google/cloud/discovery_engine"
require "gapic/common"
require "gapic/grpc"
require "gapic/rest"

class Google::Cloud::DiscoveryEngine::ClientConstructionMinitest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_completion_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.completion_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::CompletionService::Client, client
    end
  end

  def test_completion_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.completion_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::CompletionService::Rest::Client, client
    end
  end

  def test_control_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.control_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::ControlService::Client, client
    end
  end

  def test_control_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.control_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::ControlService::Rest::Client, client
    end
  end

  def test_search_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.search_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::SearchService::Client, client
    end
  end

  def test_search_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.search_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::SearchService::Rest::Client, client
    end
  end

  def test_conversational_search_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.conversational_search_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::ConversationalSearchService::Client, client
    end
  end

  def test_conversational_search_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.conversational_search_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::ConversationalSearchService::Rest::Client, client
    end
  end

  def test_data_store_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.data_store_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::DataStoreService::Client, client
    end
  end

  def test_data_store_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.data_store_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::DataStoreService::Rest::Client, client
    end
  end

  def test_document_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.document_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::DocumentService::Client, client
    end
  end

  def test_document_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.document_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client, client
    end
  end

  def test_engine_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.engine_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::EngineService::Client, client
    end
  end

  def test_engine_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.engine_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::EngineService::Rest::Client, client
    end
  end

  def test_grounded_generation_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.grounded_generation_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Client, client
    end
  end

  def test_grounded_generation_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.grounded_generation_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Rest::Client, client
    end
  end

  def test_project_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.project_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::ProjectService::Client, client
    end
  end

  def test_project_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.project_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::ProjectService::Rest::Client, client
    end
  end

  def test_rank_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.rank_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::RankService::Client, client
    end
  end

  def test_rank_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.rank_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::RankService::Rest::Client, client
    end
  end

  def test_recommendation_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.recommendation_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client, client
    end
  end

  def test_recommendation_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.recommendation_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::RecommendationService::Rest::Client, client
    end
  end

  def test_schema_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.schema_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::SchemaService::Client, client
    end
  end

  def test_schema_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.schema_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::SchemaService::Rest::Client, client
    end
  end

  def test_search_tuning_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.search_tuning_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::SearchTuningService::Client, client
    end
  end

  def test_search_tuning_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.search_tuning_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::SearchTuningService::Rest::Client, client
    end
  end

  def test_site_search_engine_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.site_search_engine_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client, client
    end
  end

  def test_site_search_engine_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.site_search_engine_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Rest::Client, client
    end
  end

  def test_user_event_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::DiscoveryEngine.user_event_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::UserEventService::Client, client
    end
  end

  def test_user_event_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::DiscoveryEngine.user_event_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::DiscoveryEngine::V1::UserEventService::Rest::Client, client
    end
  end
end
