# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/asset/v1/assets.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/cloud/orgpolicy/v1/orgpolicy_pb'
require 'google/iam/v1/policy_pb'
require 'google/identity/accesscontextmanager/v1/access_level_pb'
require 'google/identity/accesscontextmanager/v1/access_policy_pb'
require 'google/cloud/osconfig/v1/inventory_pb'
require 'google/identity/accesscontextmanager/v1/service_perimeter_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/code_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/asset/v1/assets.proto", :syntax => :proto3) do
    add_message "google.cloud.asset.v1.TemporalAsset" do
      optional :window, :message, 1, "google.cloud.asset.v1.TimeWindow"
      optional :deleted, :bool, 2
      optional :asset, :message, 3, "google.cloud.asset.v1.Asset"
      optional :prior_asset_state, :enum, 4, "google.cloud.asset.v1.TemporalAsset.PriorAssetState"
      optional :prior_asset, :message, 5, "google.cloud.asset.v1.Asset"
    end
    add_enum "google.cloud.asset.v1.TemporalAsset.PriorAssetState" do
      value :PRIOR_ASSET_STATE_UNSPECIFIED, 0
      value :PRESENT, 1
      value :INVALID, 2
      value :DOES_NOT_EXIST, 3
      value :DELETED, 4
    end
    add_message "google.cloud.asset.v1.TimeWindow" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.asset.v1.Asset" do
      optional :update_time, :message, 11, "google.protobuf.Timestamp"
      optional :name, :string, 1
      optional :asset_type, :string, 2
      optional :resource, :message, 3, "google.cloud.asset.v1.Resource"
      optional :iam_policy, :message, 4, "google.iam.v1.Policy"
      repeated :org_policy, :message, 6, "google.cloud.orgpolicy.v1.Policy"
      optional :os_inventory, :message, 12, "google.cloud.osconfig.v1.Inventory"
      optional :related_assets, :message, 13, "google.cloud.asset.v1.RelatedAssets"
      repeated :ancestors, :string, 10
      oneof :access_context_policy do
        optional :access_policy, :message, 7, "google.identity.accesscontextmanager.v1.AccessPolicy"
        optional :access_level, :message, 8, "google.identity.accesscontextmanager.v1.AccessLevel"
        optional :service_perimeter, :message, 9, "google.identity.accesscontextmanager.v1.ServicePerimeter"
      end
    end
    add_message "google.cloud.asset.v1.Resource" do
      optional :version, :string, 1
      optional :discovery_document_uri, :string, 2
      optional :discovery_name, :string, 3
      optional :resource_url, :string, 4
      optional :parent, :string, 5
      optional :data, :message, 6, "google.protobuf.Struct"
      optional :location, :string, 8
    end
    add_message "google.cloud.asset.v1.RelatedAssets" do
      optional :relationship_attributes, :message, 1, "google.cloud.asset.v1.RelationshipAttributes"
      repeated :assets, :message, 2, "google.cloud.asset.v1.RelatedAsset"
    end
    add_message "google.cloud.asset.v1.RelationshipAttributes" do
      optional :type, :string, 4
      optional :source_resource_type, :string, 1
      optional :target_resource_type, :string, 2
      optional :action, :string, 3
    end
    add_message "google.cloud.asset.v1.RelatedAsset" do
      optional :asset, :string, 1
      optional :asset_type, :string, 2
      repeated :ancestors, :string, 3
    end
    add_message "google.cloud.asset.v1.ResourceSearchResult" do
      optional :name, :string, 1
      optional :asset_type, :string, 2
      optional :project, :string, 3
      repeated :folders, :string, 17
      optional :organization, :string, 18
      optional :display_name, :string, 4
      optional :description, :string, 5
      optional :location, :string, 6
      map :labels, :string, :string, 7
      repeated :network_tags, :string, 8
      optional :kms_key, :string, 10
      optional :create_time, :message, 11, "google.protobuf.Timestamp"
      optional :update_time, :message, 12, "google.protobuf.Timestamp"
      optional :state, :string, 13
      optional :additional_attributes, :message, 9, "google.protobuf.Struct"
      optional :parent_full_resource_name, :string, 19
      repeated :versioned_resources, :message, 16, "google.cloud.asset.v1.VersionedResource"
      repeated :attached_resources, :message, 20, "google.cloud.asset.v1.AttachedResource"
      map :relationships, :string, :message, 21, "google.cloud.asset.v1.RelatedResources"
      optional :parent_asset_type, :string, 103
    end
    add_message "google.cloud.asset.v1.VersionedResource" do
      optional :version, :string, 1
      optional :resource, :message, 2, "google.protobuf.Struct"
    end
    add_message "google.cloud.asset.v1.AttachedResource" do
      optional :asset_type, :string, 1
      repeated :versioned_resources, :message, 3, "google.cloud.asset.v1.VersionedResource"
    end
    add_message "google.cloud.asset.v1.RelatedResources" do
      repeated :related_resources, :message, 1, "google.cloud.asset.v1.RelatedResource"
    end
    add_message "google.cloud.asset.v1.RelatedResource" do
      optional :asset_type, :string, 1
      optional :full_resource_name, :string, 2
    end
    add_message "google.cloud.asset.v1.IamPolicySearchResult" do
      optional :resource, :string, 1
      optional :asset_type, :string, 5
      optional :project, :string, 2
      repeated :folders, :string, 6
      optional :organization, :string, 7
      optional :policy, :message, 3, "google.iam.v1.Policy"
      optional :explanation, :message, 4, "google.cloud.asset.v1.IamPolicySearchResult.Explanation"
    end
    add_message "google.cloud.asset.v1.IamPolicySearchResult.Explanation" do
      map :matched_permissions, :string, :message, 1, "google.cloud.asset.v1.IamPolicySearchResult.Explanation.Permissions"
    end
    add_message "google.cloud.asset.v1.IamPolicySearchResult.Explanation.Permissions" do
      repeated :permissions, :string, 1
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisState" do
      optional :code, :enum, 1, "google.rpc.Code"
      optional :cause, :string, 2
    end
    add_message "google.cloud.asset.v1.ConditionEvaluation" do
      optional :evaluation_value, :enum, 1, "google.cloud.asset.v1.ConditionEvaluation.EvaluationValue"
    end
    add_enum "google.cloud.asset.v1.ConditionEvaluation.EvaluationValue" do
      value :EVALUATION_VALUE_UNSPECIFIED, 0
      value :TRUE, 1
      value :FALSE, 2
      value :CONDITIONAL, 3
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisResult" do
      optional :attached_resource_full_name, :string, 1
      optional :iam_binding, :message, 2, "google.iam.v1.Binding"
      repeated :access_control_lists, :message, 3, "google.cloud.asset.v1.IamPolicyAnalysisResult.AccessControlList"
      optional :identity_list, :message, 4, "google.cloud.asset.v1.IamPolicyAnalysisResult.IdentityList"
      optional :fully_explored, :bool, 5
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisResult.Resource" do
      optional :full_resource_name, :string, 1
      optional :analysis_state, :message, 2, "google.cloud.asset.v1.IamPolicyAnalysisState"
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisResult.Access" do
      optional :analysis_state, :message, 3, "google.cloud.asset.v1.IamPolicyAnalysisState"
      oneof :oneof_access do
        optional :role, :string, 1
        optional :permission, :string, 2
      end
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisResult.Identity" do
      optional :name, :string, 1
      optional :analysis_state, :message, 2, "google.cloud.asset.v1.IamPolicyAnalysisState"
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisResult.Edge" do
      optional :source_node, :string, 1
      optional :target_node, :string, 2
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisResult.AccessControlList" do
      repeated :resources, :message, 1, "google.cloud.asset.v1.IamPolicyAnalysisResult.Resource"
      repeated :accesses, :message, 2, "google.cloud.asset.v1.IamPolicyAnalysisResult.Access"
      repeated :resource_edges, :message, 3, "google.cloud.asset.v1.IamPolicyAnalysisResult.Edge"
      optional :condition_evaluation, :message, 4, "google.cloud.asset.v1.ConditionEvaluation"
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisResult.IdentityList" do
      repeated :identities, :message, 1, "google.cloud.asset.v1.IamPolicyAnalysisResult.Identity"
      repeated :group_edges, :message, 2, "google.cloud.asset.v1.IamPolicyAnalysisResult.Edge"
    end
  end
end

module Google
  module Cloud
    module Asset
      module V1
        TemporalAsset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.TemporalAsset").msgclass
        TemporalAsset::PriorAssetState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.TemporalAsset.PriorAssetState").enummodule
        TimeWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.TimeWindow").msgclass
        Asset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.Asset").msgclass
        Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.Resource").msgclass
        RelatedAssets = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.RelatedAssets").msgclass
        RelationshipAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.RelationshipAttributes").msgclass
        RelatedAsset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.RelatedAsset").msgclass
        ResourceSearchResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ResourceSearchResult").msgclass
        VersionedResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.VersionedResource").msgclass
        AttachedResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AttachedResource").msgclass
        RelatedResources = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.RelatedResources").msgclass
        RelatedResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.RelatedResource").msgclass
        IamPolicySearchResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicySearchResult").msgclass
        IamPolicySearchResult::Explanation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicySearchResult.Explanation").msgclass
        IamPolicySearchResult::Explanation::Permissions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicySearchResult.Explanation.Permissions").msgclass
        IamPolicyAnalysisState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisState").msgclass
        ConditionEvaluation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ConditionEvaluation").msgclass
        ConditionEvaluation::EvaluationValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ConditionEvaluation.EvaluationValue").enummodule
        IamPolicyAnalysisResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisResult").msgclass
        IamPolicyAnalysisResult::Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisResult.Resource").msgclass
        IamPolicyAnalysisResult::Access = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisResult.Access").msgclass
        IamPolicyAnalysisResult::Identity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisResult.Identity").msgclass
        IamPolicyAnalysisResult::Edge = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisResult.Edge").msgclass
        IamPolicyAnalysisResult::AccessControlList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisResult.AccessControlList").msgclass
        IamPolicyAnalysisResult::IdentityList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisResult.IdentityList").msgclass
      end
    end
  end
end
