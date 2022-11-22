# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/orgpolicy/v1/orgpolicy.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/orgpolicy/v1/orgpolicy.proto", :syntax => :proto3) do
    add_message "google.cloud.orgpolicy.v1.Policy" do
      optional :version, :int32, 1
      optional :constraint, :string, 2
      optional :etag, :bytes, 3
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      oneof :policy_type do
        optional :list_policy, :message, 5, "google.cloud.orgpolicy.v1.Policy.ListPolicy"
        optional :boolean_policy, :message, 6, "google.cloud.orgpolicy.v1.Policy.BooleanPolicy"
        optional :restore_default, :message, 7, "google.cloud.orgpolicy.v1.Policy.RestoreDefault"
      end
    end
    add_message "google.cloud.orgpolicy.v1.Policy.ListPolicy" do
      repeated :allowed_values, :string, 1
      repeated :denied_values, :string, 2
      optional :all_values, :enum, 3, "google.cloud.orgpolicy.v1.Policy.ListPolicy.AllValues"
      optional :suggested_value, :string, 4
      optional :inherit_from_parent, :bool, 5
    end
    add_enum "google.cloud.orgpolicy.v1.Policy.ListPolicy.AllValues" do
      value :ALL_VALUES_UNSPECIFIED, 0
      value :ALLOW, 1
      value :DENY, 2
    end
    add_message "google.cloud.orgpolicy.v1.Policy.BooleanPolicy" do
      optional :enforced, :bool, 1
    end
    add_message "google.cloud.orgpolicy.v1.Policy.RestoreDefault" do
    end
  end
end

module Google
  module Cloud
    module OrgPolicy
      module V1
        Policy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orgpolicy.v1.Policy").msgclass
        Policy::ListPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orgpolicy.v1.Policy.ListPolicy").msgclass
        Policy::ListPolicy::AllValues = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orgpolicy.v1.Policy.ListPolicy.AllValues").enummodule
        Policy::BooleanPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orgpolicy.v1.Policy.BooleanPolicy").msgclass
        Policy::RestoreDefault = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orgpolicy.v1.Policy.RestoreDefault").msgclass
      end
    end
  end
end
