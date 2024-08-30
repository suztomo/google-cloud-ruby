# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1p1beta1/organization_settings.proto

require 'google/protobuf'

require 'google/api/resource_pb'


descriptor_data = "\nAgoogle/cloud/securitycenter/v1p1beta1/organization_settings.proto\x12%google.cloud.securitycenter.v1p1beta1\x1a\x19google/api/resource.proto\"\xac\x04\n\x14OrganizationSettings\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x1e\n\x16\x65nable_asset_discovery\x18\x02 \x01(\x08\x12p\n\x16\x61sset_discovery_config\x18\x03 \x01(\x0b\x32P.google.cloud.securitycenter.v1p1beta1.OrganizationSettings.AssetDiscoveryConfig\x1a\x87\x02\n\x14\x41ssetDiscoveryConfig\x12\x13\n\x0bproject_ids\x18\x01 \x03(\t\x12v\n\x0einclusion_mode\x18\x02 \x01(\x0e\x32^.google.cloud.securitycenter.v1p1beta1.OrganizationSettings.AssetDiscoveryConfig.InclusionMode\x12\x12\n\nfolder_ids\x18\x03 \x03(\t\"N\n\rInclusionMode\x12\x1e\n\x1aINCLUSION_MODE_UNSPECIFIED\x10\x00\x12\x10\n\x0cINCLUDE_ONLY\x10\x01\x12\x0b\n\x07\x45XCLUDE\x10\x02:j\xea\x41g\n2securitycenter.googleapis.com/OrganizationSettings\x12\x31organizations/{organization}/organizationSettingsB\xfb\x01\n)com.google.cloud.securitycenter.v1p1beta1P\x01ZQcloud.google.com/go/securitycenter/apiv1p1beta1/securitycenterpb;securitycenterpb\xaa\x02%Google.Cloud.SecurityCenter.V1P1Beta1\xca\x02%Google\\Cloud\\SecurityCenter\\V1p1beta1\xea\x02(Google::Cloud::SecurityCenter::V1p1beta1b\x06proto3"

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
    module SecurityCenter
      module V1p1beta1
        OrganizationSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.OrganizationSettings").msgclass
        OrganizationSettings::AssetDiscoveryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.OrganizationSettings.AssetDiscoveryConfig").msgclass
        OrganizationSettings::AssetDiscoveryConfig::InclusionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.OrganizationSettings.AssetDiscoveryConfig.InclusionMode").enummodule
      end
    end
  end
end
