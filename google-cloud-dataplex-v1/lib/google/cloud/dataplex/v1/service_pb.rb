# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dataplex/v1/analyze_pb'
require 'google/cloud/dataplex/v1/resources_pb'
require 'google/cloud/dataplex/v1/tasks_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dataplex/v1/service.proto", :syntax => :proto3) do
    add_message "google.cloud.dataplex.v1.CreateLakeRequest" do
      optional :parent, :string, 1
      optional :lake_id, :string, 2
      optional :lake, :message, 3, "google.cloud.dataplex.v1.Lake"
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.dataplex.v1.UpdateLakeRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :lake, :message, 2, "google.cloud.dataplex.v1.Lake"
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.dataplex.v1.DeleteLakeRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.ListLakesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.dataplex.v1.ListLakesResponse" do
      repeated :lakes, :message, 1, "google.cloud.dataplex.v1.Lake"
      optional :next_page_token, :string, 2
      repeated :unreachable_locations, :string, 3
    end
    add_message "google.cloud.dataplex.v1.ListLakeActionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dataplex.v1.ListActionsResponse" do
      repeated :actions, :message, 1, "google.cloud.dataplex.v1.Action"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dataplex.v1.GetLakeRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.CreateZoneRequest" do
      optional :parent, :string, 1
      optional :zone_id, :string, 2
      optional :zone, :message, 3, "google.cloud.dataplex.v1.Zone"
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.dataplex.v1.UpdateZoneRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :zone, :message, 2, "google.cloud.dataplex.v1.Zone"
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.dataplex.v1.DeleteZoneRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.ListZonesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.dataplex.v1.ListZonesResponse" do
      repeated :zones, :message, 1, "google.cloud.dataplex.v1.Zone"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dataplex.v1.ListZoneActionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dataplex.v1.GetZoneRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.CreateAssetRequest" do
      optional :parent, :string, 1
      optional :asset_id, :string, 2
      optional :asset, :message, 3, "google.cloud.dataplex.v1.Asset"
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.dataplex.v1.UpdateAssetRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :asset, :message, 2, "google.cloud.dataplex.v1.Asset"
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.dataplex.v1.DeleteAssetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.ListAssetsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.dataplex.v1.ListAssetsResponse" do
      repeated :assets, :message, 1, "google.cloud.dataplex.v1.Asset"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dataplex.v1.ListAssetActionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dataplex.v1.GetAssetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
    add_message "google.cloud.dataplex.v1.CreateTaskRequest" do
      optional :parent, :string, 1
      optional :task_id, :string, 2
      optional :task, :message, 3, "google.cloud.dataplex.v1.Task"
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.dataplex.v1.UpdateTaskRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :task, :message, 2, "google.cloud.dataplex.v1.Task"
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.dataplex.v1.DeleteTaskRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.ListTasksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.dataplex.v1.ListTasksResponse" do
      repeated :tasks, :message, 1, "google.cloud.dataplex.v1.Task"
      optional :next_page_token, :string, 2
      repeated :unreachable_locations, :string, 3
    end
    add_message "google.cloud.dataplex.v1.GetTaskRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.GetJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.ListJobsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dataplex.v1.ListJobsResponse" do
      repeated :jobs, :message, 1, "google.cloud.dataplex.v1.Job"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dataplex.v1.CancelJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.CreateEnvironmentRequest" do
      optional :parent, :string, 1
      optional :environment_id, :string, 2
      optional :environment, :message, 3, "google.cloud.dataplex.v1.Environment"
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.dataplex.v1.UpdateEnvironmentRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :environment, :message, 2, "google.cloud.dataplex.v1.Environment"
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.dataplex.v1.DeleteEnvironmentRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.ListEnvironmentsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.dataplex.v1.ListEnvironmentsResponse" do
      repeated :environments, :message, 1, "google.cloud.dataplex.v1.Environment"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dataplex.v1.GetEnvironmentRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.ListSessionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.dataplex.v1.ListSessionsResponse" do
      repeated :sessions, :message, 1, "google.cloud.dataplex.v1.Session"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module Dataplex
      module V1
        CreateLakeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateLakeRequest").msgclass
        UpdateLakeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateLakeRequest").msgclass
        DeleteLakeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteLakeRequest").msgclass
        ListLakesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListLakesRequest").msgclass
        ListLakesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListLakesResponse").msgclass
        ListLakeActionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListLakeActionsRequest").msgclass
        ListActionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListActionsResponse").msgclass
        GetLakeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetLakeRequest").msgclass
        CreateZoneRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateZoneRequest").msgclass
        UpdateZoneRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateZoneRequest").msgclass
        DeleteZoneRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteZoneRequest").msgclass
        ListZonesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListZonesRequest").msgclass
        ListZonesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListZonesResponse").msgclass
        ListZoneActionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListZoneActionsRequest").msgclass
        GetZoneRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetZoneRequest").msgclass
        CreateAssetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateAssetRequest").msgclass
        UpdateAssetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateAssetRequest").msgclass
        DeleteAssetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteAssetRequest").msgclass
        ListAssetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListAssetsRequest").msgclass
        ListAssetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListAssetsResponse").msgclass
        ListAssetActionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListAssetActionsRequest").msgclass
        GetAssetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetAssetRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.OperationMetadata").msgclass
        CreateTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateTaskRequest").msgclass
        UpdateTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateTaskRequest").msgclass
        DeleteTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteTaskRequest").msgclass
        ListTasksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListTasksRequest").msgclass
        ListTasksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListTasksResponse").msgclass
        GetTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetTaskRequest").msgclass
        GetJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetJobRequest").msgclass
        ListJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListJobsRequest").msgclass
        ListJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListJobsResponse").msgclass
        CancelJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CancelJobRequest").msgclass
        CreateEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateEnvironmentRequest").msgclass
        UpdateEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateEnvironmentRequest").msgclass
        DeleteEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteEnvironmentRequest").msgclass
        ListEnvironmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListEnvironmentsRequest").msgclass
        ListEnvironmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListEnvironmentsResponse").msgclass
        GetEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetEnvironmentRequest").msgclass
        ListSessionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListSessionsRequest").msgclass
        ListSessionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListSessionsResponse").msgclass
      end
    end
  end
end
