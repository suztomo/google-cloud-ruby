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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/bigquery/analytics_hub/v1/analytics_hub_service"

class ::Google::Cloud::Bigquery::AnalyticsHub::V1::AnalyticsHubService::ClientPathsTest < Minitest::Test
  def test_data_exchange_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::AnalyticsHub::V1::AnalyticsHubService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_exchange_path project: "value0", location: "value1", data_exchange: "value2"
      assert_equal "projects/value0/locations/value1/dataExchanges/value2", path
    end
  end

  def test_dataset_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::AnalyticsHub::V1::AnalyticsHubService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.dataset_path project: "value0", dataset: "value1"
      assert_equal "projects/value0/datasets/value1", path
    end
  end

  def test_listing_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::AnalyticsHub::V1::AnalyticsHubService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.listing_path project: "value0", location: "value1", data_exchange: "value2", listing: "value3"
      assert_equal "projects/value0/locations/value1/dataExchanges/value2/listings/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::AnalyticsHub::V1::AnalyticsHubService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end
end
