# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/safety_settings.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n3google/cloud/dialogflow/cx/v3/safety_settings.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1fgoogle/api/field_behavior.proto\"\x97\x01\n\x0eSafetySettings\x12L\n\x0e\x62\x61nned_phrases\x18\x01 \x03(\x0b\x32\x34.google.cloud.dialogflow.cx.v3.SafetySettings.Phrase\x1a\x37\n\x06Phrase\x12\x11\n\x04text\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1a\n\rlanguage_code\x18\x02 \x01(\tB\x03\xe0\x41\x02\x42\xb9\x01\n!com.google.cloud.dialogflow.cx.v3B\x13SafetySettingsProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

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
  module Cloud
    module Dialogflow
      module CX
        module V3
          SafetySettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SafetySettings").msgclass
          SafetySettings::Phrase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SafetySettings.Phrase").msgclass
        end
      end
    end
  end
end
