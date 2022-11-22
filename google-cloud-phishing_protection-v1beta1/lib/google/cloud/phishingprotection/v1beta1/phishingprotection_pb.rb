# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/phishingprotection/v1beta1/phishingprotection.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/phishingprotection/v1beta1/phishingprotection.proto", :syntax => :proto3) do
    add_message "google.cloud.phishingprotection.v1beta1.ReportPhishingRequest" do
      optional :parent, :string, 1
      optional :uri, :string, 2
    end
    add_message "google.cloud.phishingprotection.v1beta1.ReportPhishingResponse" do
    end
  end
end

module Google
  module Cloud
    module PhishingProtection
      module V1beta1
        ReportPhishingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.phishingprotection.v1beta1.ReportPhishingRequest").msgclass
        ReportPhishingResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.phishingprotection.v1beta1.ReportPhishingResponse").msgclass
      end
    end
  end
end
