# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1beta2/apt_artifact.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/devtools/artifactregistry/v1beta2/apt_artifact.proto", :syntax => :proto3) do
    add_message "google.devtools.artifactregistry.v1beta2.AptArtifact" do
      optional :name, :string, 1
      optional :package_name, :string, 2
      optional :package_type, :enum, 3, "google.devtools.artifactregistry.v1beta2.AptArtifact.PackageType"
      optional :architecture, :string, 4
      optional :component, :string, 5
      optional :control_file, :bytes, 6
    end
    add_enum "google.devtools.artifactregistry.v1beta2.AptArtifact.PackageType" do
      value :PACKAGE_TYPE_UNSPECIFIED, 0
      value :BINARY, 1
      value :SOURCE, 2
    end
    add_message "google.devtools.artifactregistry.v1beta2.ImportAptArtifactsGcsSource" do
      repeated :uris, :string, 1
      optional :use_wildcards, :bool, 2
    end
    add_message "google.devtools.artifactregistry.v1beta2.ImportAptArtifactsRequest" do
      optional :parent, :string, 1
      oneof :source do
        optional :gcs_source, :message, 2, "google.devtools.artifactregistry.v1beta2.ImportAptArtifactsGcsSource"
      end
    end
    add_message "google.devtools.artifactregistry.v1beta2.ImportAptArtifactsErrorInfo" do
      optional :error, :message, 2, "google.rpc.Status"
      oneof :source do
        optional :gcs_source, :message, 1, "google.devtools.artifactregistry.v1beta2.ImportAptArtifactsGcsSource"
      end
    end
    add_message "google.devtools.artifactregistry.v1beta2.ImportAptArtifactsResponse" do
      repeated :apt_artifacts, :message, 1, "google.devtools.artifactregistry.v1beta2.AptArtifact"
      repeated :errors, :message, 2, "google.devtools.artifactregistry.v1beta2.ImportAptArtifactsErrorInfo"
    end
    add_message "google.devtools.artifactregistry.v1beta2.ImportAptArtifactsMetadata" do
    end
  end
end

module Google
  module Cloud
    module ArtifactRegistry
      module V1beta2
        AptArtifact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.AptArtifact").msgclass
        AptArtifact::PackageType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.AptArtifact.PackageType").enummodule
        ImportAptArtifactsGcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ImportAptArtifactsGcsSource").msgclass
        ImportAptArtifactsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ImportAptArtifactsRequest").msgclass
        ImportAptArtifactsErrorInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ImportAptArtifactsErrorInfo").msgclass
        ImportAptArtifactsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ImportAptArtifactsResponse").msgclass
        ImportAptArtifactsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ImportAptArtifactsMetadata").msgclass
      end
    end
  end
end
