# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/admanager/v1/custom_field_service.proto

require 'google/protobuf'

require 'google/ads/admanager/v1/custom_field_messages_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n2google/ads/admanager/v1/custom_field_service.proto\x12\x17google.ads.admanager.v1\x1a\x33google/ads/admanager/v1/custom_field_messages.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"S\n\x15GetCustomFieldRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$admanager.googleapis.com/CustomField\"\xc3\x01\n\x17ListCustomFieldsRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n admanager.googleapis.com/Network\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04skip\x18\x06 \x01(\x05\x42\x03\xe0\x41\x01\"\x84\x01\n\x18ListCustomFieldsResponse\x12;\n\rcustom_fields\x18\x01 \x03(\x0b\x32$.google.ads.admanager.v1.CustomField\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\x32\x80\x03\n\x12\x43ustomFieldService\x12\x9b\x01\n\x0eGetCustomField\x12..google.ads.admanager.v1.GetCustomFieldRequest\x1a$.google.ads.admanager.v1.CustomField\"3\xda\x41\x04name\x82\xd3\xe4\x93\x02&\x12$/v1/{name=networks/*/customFields/*}\x12\xae\x01\n\x10ListCustomFields\x12\x30.google.ads.admanager.v1.ListCustomFieldsRequest\x1a\x31.google.ads.admanager.v1.ListCustomFieldsResponse\"5\xda\x41\x06parent\x82\xd3\xe4\x93\x02&\x12$/v1/{parent=networks/*}/customFields\x1a\x1b\xca\x41\x18\x61\x64manager.googleapis.comB\xae\x01\n\x1b\x63om.google.ads.admanager.v1B\x17\x43ustomFieldServiceProtoP\x01Z@google.golang.org/genproto/googleapis/ads/admanager/v1;admanager\xaa\x02\x17Google.Ads.AdManager.V1\xca\x02\x17Google\\Ads\\AdManager\\V1b\x06proto3"

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
    ["google.ads.admanager.v1.CustomField", "google/ads/admanager/v1/custom_field_messages.proto"],
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
  module Ads
    module Admanager
      module V1
        GetCustomFieldRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.GetCustomFieldRequest").msgclass
        ListCustomFieldsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.ListCustomFieldsRequest").msgclass
        ListCustomFieldsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.ListCustomFieldsResponse").msgclass
      end
    end
  end
end
