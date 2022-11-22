# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/iam/v2/policy.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/iam/v2/deny_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/iam/v2/policy.proto", :syntax => :proto3) do
    add_message "google.iam.v2.Policy" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :kind, :string, 3
      optional :display_name, :string, 4
      map :annotations, :string, :string, 5
      optional :etag, :string, 6
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :update_time, :message, 8, "google.protobuf.Timestamp"
      optional :delete_time, :message, 9, "google.protobuf.Timestamp"
      repeated :rules, :message, 10, "google.iam.v2.PolicyRule"
      optional :managing_authority, :string, 11
    end
    add_message "google.iam.v2.PolicyRule" do
      optional :description, :string, 1
      oneof :kind do
        optional :deny_rule, :message, 2, "google.iam.v2.DenyRule"
      end
    end
    add_message "google.iam.v2.ListPoliciesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.iam.v2.ListPoliciesResponse" do
      repeated :policies, :message, 1, "google.iam.v2.Policy"
      optional :next_page_token, :string, 2
    end
    add_message "google.iam.v2.GetPolicyRequest" do
      optional :name, :string, 1
    end
    add_message "google.iam.v2.CreatePolicyRequest" do
      optional :parent, :string, 1
      optional :policy, :message, 2, "google.iam.v2.Policy"
      optional :policy_id, :string, 3
    end
    add_message "google.iam.v2.UpdatePolicyRequest" do
      optional :policy, :message, 1, "google.iam.v2.Policy"
    end
    add_message "google.iam.v2.DeletePolicyRequest" do
      optional :name, :string, 1
      optional :etag, :string, 2
    end
    add_message "google.iam.v2.PolicyOperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
    end
  end
end

module Google
  module Iam
    module V2
      Policy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.Policy").msgclass
      PolicyRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.PolicyRule").msgclass
      ListPoliciesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.ListPoliciesRequest").msgclass
      ListPoliciesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.ListPoliciesResponse").msgclass
      GetPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.GetPolicyRequest").msgclass
      CreatePolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.CreatePolicyRequest").msgclass
      UpdatePolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.UpdatePolicyRequest").msgclass
      DeletePolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.DeletePolicyRequest").msgclass
      PolicyOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v2.PolicyOperationMetadata").msgclass
    end
  end
end
