# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/v1/type.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/spanner/v1/type.proto", :syntax => :proto3) do
    add_message "google.spanner.v1.Type" do
      optional :code, :enum, 1, "google.spanner.v1.TypeCode"
      optional :array_element_type, :message, 2, "google.spanner.v1.Type"
      optional :struct_type, :message, 3, "google.spanner.v1.StructType"
      optional :type_annotation, :enum, 4, "google.spanner.v1.TypeAnnotationCode"
    end
    add_message "google.spanner.v1.StructType" do
      repeated :fields, :message, 1, "google.spanner.v1.StructType.Field"
    end
    add_message "google.spanner.v1.StructType.Field" do
      optional :name, :string, 1
      optional :type, :message, 2, "google.spanner.v1.Type"
    end
    add_enum "google.spanner.v1.TypeCode" do
      value :TYPE_CODE_UNSPECIFIED, 0
      value :BOOL, 1
      value :INT64, 2
      value :FLOAT64, 3
      value :TIMESTAMP, 4
      value :DATE, 5
      value :STRING, 6
      value :BYTES, 7
      value :ARRAY, 8
      value :STRUCT, 9
      value :NUMERIC, 10
      value :JSON, 11
    end
    add_enum "google.spanner.v1.TypeAnnotationCode" do
      value :TYPE_ANNOTATION_CODE_UNSPECIFIED, 0
      value :PG_NUMERIC, 2
      value :PG_JSONB, 3
    end
  end
end

module Google
  module Cloud
    module Spanner
      module V1
        Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.Type").msgclass
        StructType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.StructType").msgclass
        StructType::Field = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.StructType.Field").msgclass
        TypeCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.TypeCode").enummodule
        TypeAnnotationCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.TypeAnnotationCode").enummodule
      end
    end
  end
end
