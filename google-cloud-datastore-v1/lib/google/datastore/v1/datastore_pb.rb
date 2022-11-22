# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/datastore/v1/datastore.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/datastore/v1/aggregation_result_pb'
require 'google/datastore/v1/entity_pb'
require 'google/datastore/v1/query_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/datastore/v1/datastore.proto", :syntax => :proto3) do
    add_message "google.datastore.v1.LookupRequest" do
      optional :project_id, :string, 8
      optional :database_id, :string, 9
      optional :read_options, :message, 1, "google.datastore.v1.ReadOptions"
      repeated :keys, :message, 3, "google.datastore.v1.Key"
    end
    add_message "google.datastore.v1.LookupResponse" do
      repeated :found, :message, 1, "google.datastore.v1.EntityResult"
      repeated :missing, :message, 2, "google.datastore.v1.EntityResult"
      repeated :deferred, :message, 3, "google.datastore.v1.Key"
      optional :read_time, :message, 7, "google.protobuf.Timestamp"
    end
    add_message "google.datastore.v1.RunQueryRequest" do
      optional :project_id, :string, 8
      optional :database_id, :string, 9
      optional :partition_id, :message, 2, "google.datastore.v1.PartitionId"
      optional :read_options, :message, 1, "google.datastore.v1.ReadOptions"
      oneof :query_type do
        optional :query, :message, 3, "google.datastore.v1.Query"
        optional :gql_query, :message, 7, "google.datastore.v1.GqlQuery"
      end
    end
    add_message "google.datastore.v1.RunQueryResponse" do
      optional :batch, :message, 1, "google.datastore.v1.QueryResultBatch"
      optional :query, :message, 2, "google.datastore.v1.Query"
    end
    add_message "google.datastore.v1.RunAggregationQueryRequest" do
      optional :project_id, :string, 8
      optional :database_id, :string, 9
      optional :partition_id, :message, 2, "google.datastore.v1.PartitionId"
      optional :read_options, :message, 1, "google.datastore.v1.ReadOptions"
      oneof :query_type do
        optional :aggregation_query, :message, 3, "google.datastore.v1.AggregationQuery"
        optional :gql_query, :message, 7, "google.datastore.v1.GqlQuery"
      end
    end
    add_message "google.datastore.v1.RunAggregationQueryResponse" do
      optional :batch, :message, 1, "google.datastore.v1.AggregationResultBatch"
      optional :query, :message, 2, "google.datastore.v1.AggregationQuery"
    end
    add_message "google.datastore.v1.BeginTransactionRequest" do
      optional :project_id, :string, 8
      optional :database_id, :string, 9
      optional :transaction_options, :message, 10, "google.datastore.v1.TransactionOptions"
    end
    add_message "google.datastore.v1.BeginTransactionResponse" do
      optional :transaction, :bytes, 1
    end
    add_message "google.datastore.v1.RollbackRequest" do
      optional :project_id, :string, 8
      optional :database_id, :string, 9
      optional :transaction, :bytes, 1
    end
    add_message "google.datastore.v1.RollbackResponse" do
    end
    add_message "google.datastore.v1.CommitRequest" do
      optional :project_id, :string, 8
      optional :database_id, :string, 9
      optional :mode, :enum, 5, "google.datastore.v1.CommitRequest.Mode"
      repeated :mutations, :message, 6, "google.datastore.v1.Mutation"
      oneof :transaction_selector do
        optional :transaction, :bytes, 1
      end
    end
    add_enum "google.datastore.v1.CommitRequest.Mode" do
      value :MODE_UNSPECIFIED, 0
      value :TRANSACTIONAL, 1
      value :NON_TRANSACTIONAL, 2
    end
    add_message "google.datastore.v1.CommitResponse" do
      repeated :mutation_results, :message, 3, "google.datastore.v1.MutationResult"
      optional :index_updates, :int32, 4
      optional :commit_time, :message, 8, "google.protobuf.Timestamp"
    end
    add_message "google.datastore.v1.AllocateIdsRequest" do
      optional :project_id, :string, 8
      optional :database_id, :string, 9
      repeated :keys, :message, 1, "google.datastore.v1.Key"
    end
    add_message "google.datastore.v1.AllocateIdsResponse" do
      repeated :keys, :message, 1, "google.datastore.v1.Key"
    end
    add_message "google.datastore.v1.ReserveIdsRequest" do
      optional :project_id, :string, 8
      optional :database_id, :string, 9
      repeated :keys, :message, 1, "google.datastore.v1.Key"
    end
    add_message "google.datastore.v1.ReserveIdsResponse" do
    end
    add_message "google.datastore.v1.Mutation" do
      oneof :operation do
        optional :insert, :message, 4, "google.datastore.v1.Entity"
        optional :update, :message, 5, "google.datastore.v1.Entity"
        optional :upsert, :message, 6, "google.datastore.v1.Entity"
        optional :delete, :message, 7, "google.datastore.v1.Key"
      end
      oneof :conflict_detection_strategy do
        optional :base_version, :int64, 8
        optional :update_time, :message, 11, "google.protobuf.Timestamp"
      end
    end
    add_message "google.datastore.v1.MutationResult" do
      optional :key, :message, 3, "google.datastore.v1.Key"
      optional :version, :int64, 4
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      optional :conflict_detected, :bool, 5
    end
    add_message "google.datastore.v1.ReadOptions" do
      oneof :consistency_type do
        optional :read_consistency, :enum, 1, "google.datastore.v1.ReadOptions.ReadConsistency"
        optional :transaction, :bytes, 2
        optional :read_time, :message, 4, "google.protobuf.Timestamp"
      end
    end
    add_enum "google.datastore.v1.ReadOptions.ReadConsistency" do
      value :READ_CONSISTENCY_UNSPECIFIED, 0
      value :STRONG, 1
      value :EVENTUAL, 2
    end
    add_message "google.datastore.v1.TransactionOptions" do
      oneof :mode do
        optional :read_write, :message, 1, "google.datastore.v1.TransactionOptions.ReadWrite"
        optional :read_only, :message, 2, "google.datastore.v1.TransactionOptions.ReadOnly"
      end
    end
    add_message "google.datastore.v1.TransactionOptions.ReadWrite" do
      optional :previous_transaction, :bytes, 1
    end
    add_message "google.datastore.v1.TransactionOptions.ReadOnly" do
      optional :read_time, :message, 1, "google.protobuf.Timestamp"
    end
  end
end

module Google
  module Cloud
    module Datastore
      module V1
        LookupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.LookupRequest").msgclass
        LookupResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.LookupResponse").msgclass
        RunQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RunQueryRequest").msgclass
        RunQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RunQueryResponse").msgclass
        RunAggregationQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RunAggregationQueryRequest").msgclass
        RunAggregationQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RunAggregationQueryResponse").msgclass
        BeginTransactionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.BeginTransactionRequest").msgclass
        BeginTransactionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.BeginTransactionResponse").msgclass
        RollbackRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RollbackRequest").msgclass
        RollbackResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RollbackResponse").msgclass
        CommitRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.CommitRequest").msgclass
        CommitRequest::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.CommitRequest.Mode").enummodule
        CommitResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.CommitResponse").msgclass
        AllocateIdsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.AllocateIdsRequest").msgclass
        AllocateIdsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.AllocateIdsResponse").msgclass
        ReserveIdsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.ReserveIdsRequest").msgclass
        ReserveIdsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.ReserveIdsResponse").msgclass
        Mutation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.Mutation").msgclass
        MutationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.MutationResult").msgclass
        ReadOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.ReadOptions").msgclass
        ReadOptions::ReadConsistency = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.ReadOptions.ReadConsistency").enummodule
        TransactionOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.TransactionOptions").msgclass
        TransactionOptions::ReadWrite = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.TransactionOptions.ReadWrite").msgclass
        TransactionOptions::ReadOnly = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.TransactionOptions.ReadOnly").msgclass
      end
    end
  end
end
