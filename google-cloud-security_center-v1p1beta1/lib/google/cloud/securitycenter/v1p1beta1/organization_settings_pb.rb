# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1p1beta1/organization_settings.proto

require 'google/protobuf'

require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1p1beta1/organization_settings.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1p1beta1.OrganizationSettings" do
      optional :name, :string, 1
      optional :enable_asset_discovery, :bool, 2
      optional :asset_discovery_config, :message, 3, "google.cloud.securitycenter.v1p1beta1.OrganizationSettings.AssetDiscoveryConfig"
    end
    add_message "google.cloud.securitycenter.v1p1beta1.OrganizationSettings.AssetDiscoveryConfig" do
      repeated :project_ids, :string, 1
      optional :inclusion_mode, :enum, 2, "google.cloud.securitycenter.v1p1beta1.OrganizationSettings.AssetDiscoveryConfig.InclusionMode"
      repeated :folder_ids, :string, 3
    end
    add_enum "google.cloud.securitycenter.v1p1beta1.OrganizationSettings.AssetDiscoveryConfig.InclusionMode" do
      value :INCLUSION_MODE_UNSPECIFIED, 0
      value :INCLUDE_ONLY, 1
      value :EXCLUDE, 2
    end
  end
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
