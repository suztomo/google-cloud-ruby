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
require "google/cloud/support"
require "gapic/common"
require "gapic/grpc"

class Google::Cloud::Support::ClientConstructionMinitest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_case_attachment_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Support.case_attachment_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Support::V2::CaseAttachmentService::Client, client
    end
  end

  def test_case_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Support.case_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Support::V2::CaseService::Client, client
    end
  end

  def test_comment_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Support.comment_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Support::V2::CommentService::Client, client
    end
  end
end
