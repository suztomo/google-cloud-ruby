# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/recommendationengine/v1beta1/import.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/recommendationengine/v1beta1/catalog_pb'
require 'google/cloud/recommendationengine/v1beta1/user_event_pb'
require 'google/cloud/recommendationengine/v1beta1/recommendationengine_resources_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/recommendationengine/v1beta1/import.proto", :syntax => :proto3) do
    add_message "google.cloud.recommendationengine.v1beta1.GcsSource" do
      repeated :input_uris, :string, 1
    end
    add_message "google.cloud.recommendationengine.v1beta1.CatalogInlineSource" do
      repeated :catalog_items, :message, 1, "google.cloud.recommendationengine.v1beta1.CatalogItem"
    end
    add_message "google.cloud.recommendationengine.v1beta1.UserEventInlineSource" do
      repeated :user_events, :message, 1, "google.cloud.recommendationengine.v1beta1.UserEvent"
    end
    add_message "google.cloud.recommendationengine.v1beta1.ImportErrorsConfig" do
      oneof :destination do
        optional :gcs_prefix, :string, 1
      end
    end
    add_message "google.cloud.recommendationengine.v1beta1.ImportCatalogItemsRequest" do
      optional :parent, :string, 1
      optional :request_id, :string, 2
      optional :input_config, :message, 3, "google.cloud.recommendationengine.v1beta1.InputConfig"
      optional :errors_config, :message, 4, "google.cloud.recommendationengine.v1beta1.ImportErrorsConfig"
    end
    add_message "google.cloud.recommendationengine.v1beta1.ImportUserEventsRequest" do
      optional :parent, :string, 1
      optional :request_id, :string, 2
      optional :input_config, :message, 3, "google.cloud.recommendationengine.v1beta1.InputConfig"
      optional :errors_config, :message, 4, "google.cloud.recommendationengine.v1beta1.ImportErrorsConfig"
    end
    add_message "google.cloud.recommendationengine.v1beta1.InputConfig" do
      oneof :source do
        optional :catalog_inline_source, :message, 1, "google.cloud.recommendationengine.v1beta1.CatalogInlineSource"
        optional :gcs_source, :message, 2, "google.cloud.recommendationengine.v1beta1.GcsSource"
        optional :user_event_inline_source, :message, 3, "google.cloud.recommendationengine.v1beta1.UserEventInlineSource"
      end
    end
    add_message "google.cloud.recommendationengine.v1beta1.ImportMetadata" do
      optional :operation_name, :string, 5
      optional :request_id, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :success_count, :int64, 1
      optional :failure_count, :int64, 2
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.recommendationengine.v1beta1.ImportCatalogItemsResponse" do
      repeated :error_samples, :message, 1, "google.rpc.Status"
      optional :errors_config, :message, 2, "google.cloud.recommendationengine.v1beta1.ImportErrorsConfig"
    end
    add_message "google.cloud.recommendationengine.v1beta1.ImportUserEventsResponse" do
      repeated :error_samples, :message, 1, "google.rpc.Status"
      optional :errors_config, :message, 2, "google.cloud.recommendationengine.v1beta1.ImportErrorsConfig"
      optional :import_summary, :message, 3, "google.cloud.recommendationengine.v1beta1.UserEventImportSummary"
    end
    add_message "google.cloud.recommendationengine.v1beta1.UserEventImportSummary" do
      optional :joined_events_count, :int64, 1
      optional :unjoined_events_count, :int64, 2
    end
  end
end

module Google
  module Cloud
    module RecommendationEngine
      module V1beta1
        GcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.GcsSource").msgclass
        CatalogInlineSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.CatalogInlineSource").msgclass
        UserEventInlineSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.UserEventInlineSource").msgclass
        ImportErrorsConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ImportErrorsConfig").msgclass
        ImportCatalogItemsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ImportCatalogItemsRequest").msgclass
        ImportUserEventsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ImportUserEventsRequest").msgclass
        InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.InputConfig").msgclass
        ImportMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ImportMetadata").msgclass
        ImportCatalogItemsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ImportCatalogItemsResponse").msgclass
        ImportUserEventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ImportUserEventsResponse").msgclass
        UserEventImportSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.UserEventImportSummary").msgclass
      end
    end
  end
end
