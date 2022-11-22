# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/channel_connection.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/eventarc/v1/channel_connection.proto", :syntax => :proto3) do
    add_message "google.cloud.eventarc.v1.ChannelConnection" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :channel, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      optional :activation_token, :string, 8
    end
  end
end

module Google
  module Cloud
    module Eventarc
      module V1
        ChannelConnection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ChannelConnection").msgclass
      end
    end
  end
end
