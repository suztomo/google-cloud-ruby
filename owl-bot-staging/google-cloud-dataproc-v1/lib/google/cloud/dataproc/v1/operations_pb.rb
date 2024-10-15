# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataproc/v1/operations.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n)google/cloud/dataproc/v1/operations.proto\x12\x18google.cloud.dataproc.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xe3\x03\n\x16\x42\x61tchOperationMetadata\x12\r\n\x05\x62\x61tch\x18\x01 \x01(\t\x12\x12\n\nbatch_uuid\x18\x02 \x01(\t\x12/\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12-\n\tdone_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12[\n\x0eoperation_type\x18\x06 \x01(\x0e\x32\x43.google.cloud.dataproc.v1.BatchOperationMetadata.BatchOperationType\x12\x13\n\x0b\x64\x65scription\x18\x07 \x01(\t\x12L\n\x06labels\x18\x08 \x03(\x0b\x32<.google.cloud.dataproc.v1.BatchOperationMetadata.LabelsEntry\x12\x10\n\x08warnings\x18\t \x03(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"E\n\x12\x42\x61tchOperationType\x12$\n BATCH_OPERATION_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x42\x41TCH\x10\x01\"\x8f\x04\n\x18SessionOperationMetadata\x12\x0f\n\x07session\x18\x01 \x01(\t\x12\x14\n\x0csession_uuid\x18\x02 \x01(\t\x12/\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12-\n\tdone_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12_\n\x0eoperation_type\x18\x06 \x01(\x0e\x32G.google.cloud.dataproc.v1.SessionOperationMetadata.SessionOperationType\x12\x13\n\x0b\x64\x65scription\x18\x07 \x01(\t\x12N\n\x06labels\x18\x08 \x03(\x0b\x32>.google.cloud.dataproc.v1.SessionOperationMetadata.LabelsEntry\x12\x10\n\x08warnings\x18\t \x03(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"e\n\x14SessionOperationType\x12&\n\"SESSION_OPERATION_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x43REATE\x10\x01\x12\r\n\tTERMINATE\x10\x02\x12\n\n\x06\x44\x45LETE\x10\x03\"\x89\x02\n\x16\x43lusterOperationStatus\x12J\n\x05state\x18\x01 \x01(\x0e\x32\x36.google.cloud.dataproc.v1.ClusterOperationStatus.StateB\x03\xe0\x41\x03\x12\x18\n\x0binner_state\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07\x64\x65tails\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x39\n\x10state_start_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"8\n\x05State\x12\x0b\n\x07UNKNOWN\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\x08\n\x04\x44ONE\x10\x03\"\xda\x03\n\x18\x43lusterOperationMetadata\x12\x19\n\x0c\x63luster_name\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x63luster_uuid\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x45\n\x06status\x18\t \x01(\x0b\x32\x30.google.cloud.dataproc.v1.ClusterOperationStatusB\x03\xe0\x41\x03\x12M\n\x0estatus_history\x18\n \x03(\x0b\x32\x30.google.cloud.dataproc.v1.ClusterOperationStatusB\x03\xe0\x41\x03\x12\x1b\n\x0eoperation_type\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x0c \x01(\tB\x03\xe0\x41\x03\x12S\n\x06labels\x18\r \x03(\x0b\x32>.google.cloud.dataproc.v1.ClusterOperationMetadata.LabelsEntryB\x03\xe0\x41\x03\x12\x15\n\x08warnings\x18\x0e \x03(\tB\x03\xe0\x41\x03\x12 \n\x13\x63hild_operation_ids\x18\x0f \x03(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xfa\x04\n\x1aNodeGroupOperationMetadata\x12\x1a\n\rnode_group_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x63luster_uuid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x45\n\x06status\x18\x03 \x01(\x0b\x32\x30.google.cloud.dataproc.v1.ClusterOperationStatusB\x03\xe0\x41\x03\x12M\n\x0estatus_history\x18\x04 \x03(\x0b\x32\x30.google.cloud.dataproc.v1.ClusterOperationStatusB\x03\xe0\x41\x03\x12\x63\n\x0eoperation_type\x18\x05 \x01(\x0e\x32K.google.cloud.dataproc.v1.NodeGroupOperationMetadata.NodeGroupOperationType\x12\x18\n\x0b\x64\x65scription\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12U\n\x06labels\x18\x07 \x03(\x0b\x32@.google.cloud.dataproc.v1.NodeGroupOperationMetadata.LabelsEntryB\x03\xe0\x41\x03\x12\x15\n\x08warnings\x18\x08 \x03(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"s\n\x16NodeGroupOperationType\x12)\n%NODE_GROUP_OPERATION_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x43REATE\x10\x01\x12\n\n\x06UPDATE\x10\x02\x12\n\n\x06\x44\x45LETE\x10\x03\x12\n\n\x06RESIZE\x10\x04\x42n\n\x1c\x63om.google.cloud.dataproc.v1B\x0fOperationsProtoP\x01Z;cloud.google.com/go/dataproc/v2/apiv1/dataprocpb;dataprocpbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module Dataproc
      module V1
        BatchOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.BatchOperationMetadata").msgclass
        BatchOperationMetadata::BatchOperationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.BatchOperationMetadata.BatchOperationType").enummodule
        SessionOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.SessionOperationMetadata").msgclass
        SessionOperationMetadata::SessionOperationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.SessionOperationMetadata.SessionOperationType").enummodule
        ClusterOperationStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ClusterOperationStatus").msgclass
        ClusterOperationStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ClusterOperationStatus.State").enummodule
        ClusterOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ClusterOperationMetadata").msgclass
        NodeGroupOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.NodeGroupOperationMetadata").msgclass
        NodeGroupOperationMetadata::NodeGroupOperationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.NodeGroupOperationMetadata.NodeGroupOperationType").enummodule
      end
    end
  end
end
