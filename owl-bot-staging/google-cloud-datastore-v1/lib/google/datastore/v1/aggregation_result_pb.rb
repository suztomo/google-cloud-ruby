# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/datastore/v1/aggregation_result.proto

require 'google/protobuf'

require 'google/datastore/v1/entity_pb'
require 'google/datastore/v1/query_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/datastore/v1/aggregation_result.proto\x12\x13google.datastore.v1\x1a google/datastore/v1/entity.proto\x1a\x1fgoogle/datastore/v1/query.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xca\x01\n\x11\x41ggregationResult\x12]\n\x14\x61ggregate_properties\x18\x02 \x03(\x0b\x32?.google.datastore.v1.AggregationResult.AggregatePropertiesEntry\x1aV\n\x18\x41ggregatePropertiesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12)\n\x05value\x18\x02 \x01(\x0b\x32\x1a.google.datastore.v1.Value:\x02\x38\x01\"\xd9\x01\n\x16\x41ggregationResultBatch\x12\x43\n\x13\x61ggregation_results\x18\x01 \x03(\x0b\x32&.google.datastore.v1.AggregationResult\x12K\n\x0cmore_results\x18\x02 \x01(\x0e\x32\x35.google.datastore.v1.QueryResultBatch.MoreResultsType\x12-\n\tread_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\xc7\x01\n\x17\x63om.google.datastore.v1B\x16\x41ggregationResultProtoP\x01Z;cloud.google.com/go/datastore/apiv1/datastorepb;datastorepb\xaa\x02\x19Google.Cloud.Datastore.V1\xca\x02\x19Google\\Cloud\\Datastore\\V1\xea\x02\x1cGoogle::Cloud::Datastore::V1b\x06proto3"

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
    ["google.datastore.v1.Value", "google/datastore/v1/entity.proto"],
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
    module Datastore
      module V1
        AggregationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.AggregationResult").msgclass
        AggregationResultBatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.AggregationResultBatch").msgclass
      end
    end
  end
end
