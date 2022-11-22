# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/container.proto

require 'google/protobuf'

require 'google/cloud/securitycenter/v1/label_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1/container.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1.Container" do
      optional :name, :string, 1
      optional :uri, :string, 2
      optional :image_id, :string, 3
      repeated :labels, :message, 4, "google.cloud.securitycenter.v1.Label"
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        Container = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Container").msgclass
      end
    end
  end
end
