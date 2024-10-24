# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/admanager/v1/custom_field_messages.proto

require 'google/protobuf'

require 'google/ads/admanager/v1/custom_field_enums_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n3google/ads/admanager/v1/custom_field_messages.proto\x12\x17google.ads.admanager.v1\x1a\x30google/ads/admanager/v1/custom_field_enums.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xac\x05\n\x0b\x43ustomField\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x1c\n\x0f\x63ustom_field_id\x18\x02 \x01(\x03\x42\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12U\n\x06status\x18\x05 \x01(\x0e\x32@.google.ads.admanager.v1.CustomFieldStatusEnum.CustomFieldStatusB\x03\xe0\x41\x03\x12\x62\n\x0b\x65ntity_type\x18\x07 \x01(\x0e\x32H.google.ads.admanager.v1.CustomFieldEntityTypeEnum.CustomFieldEntityTypeB\x03\xe0\x41\x02\x12\\\n\tdata_type\x18\x08 \x01(\x0e\x32\x44.google.ads.admanager.v1.CustomFieldDataTypeEnum.CustomFieldDataTypeB\x03\xe0\x41\x02\x12\x61\n\nvisibility\x18\t \x01(\x0e\x32H.google.ads.admanager.v1.CustomFieldVisibilityEnum.CustomFieldVisibilityB\x03\xe0\x41\x02\x12@\n\x07options\x18\n \x03(\x0b\x32*.google.ads.admanager.v1.CustomFieldOptionB\x03\xe0\x41\x01:y\xea\x41v\n$admanager.googleapis.com/CustomField\x12\x33networks/{network_code}/customFields/{custom_field}*\x0c\x63ustomFields2\x0b\x63ustomField\"S\n\x11\x43ustomFieldOption\x12#\n\x16\x63ustom_field_option_id\x18\x01 \x01(\x03\x42\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x42\xaf\x01\n\x1b\x63om.google.ads.admanager.v1B\x18\x43ustomFieldMessagesProtoP\x01Z@google.golang.org/genproto/googleapis/ads/admanager/v1;admanager\xaa\x02\x17Google.Ads.AdManager.V1\xca\x02\x17Google\\Ads\\AdManager\\V1b\x06proto3"

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
        CustomField = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomField").msgclass
        CustomFieldOption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomFieldOption").msgclass
      end
    end
  end
end
