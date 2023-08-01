# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1beta1/common.proto

require 'google/protobuf'


descriptor_data = "\n-google/cloud/datacatalog/v1beta1/common.proto\x12 google.cloud.datacatalog.v1beta1*U\n\x10IntegratedSystem\x12!\n\x1dINTEGRATED_SYSTEM_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x42IGQUERY\x10\x01\x12\x10\n\x0c\x43LOUD_PUBSUB\x10\x02*j\n\x0eManagingSystem\x12\x1f\n\x1bMANAGING_SYSTEM_UNSPECIFIED\x10\x00\x12\x1c\n\x18MANAGING_SYSTEM_DATAPLEX\x10\x01\x12\x19\n\x15MANAGING_SYSTEM_OTHER\x10\x02\x42\xdf\x01\n$com.google.cloud.datacatalog.v1beta1P\x01ZFcloud.google.com/go/datacatalog/apiv1beta1/datacatalogpb;datacatalogpb\xf8\x01\x01\xaa\x02 Google.Cloud.DataCatalog.V1Beta1\xca\x02 Google\\Cloud\\DataCatalog\\V1beta1\xea\x02#Google::Cloud::DataCatalog::V1beta1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module DataCatalog
      module V1beta1
        IntegratedSystem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.IntegratedSystem").enummodule
        ManagingSystem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1beta1.ManagingSystem").enummodule
      end
    end
  end
end