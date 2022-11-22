# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/apigeeregistry/v1/registry_service.proto for package 'Google.Cloud.ApigeeRegistry.V1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/apigeeregistry/v1/registry_service_pb'

module Google
  module Cloud
    module ApigeeRegistry
      module V1
        module Registry
          # The Registry service allows teams to manage descriptions of APIs.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.apigeeregistry.v1.Registry'

            # Returns matching APIs.
            rpc :ListApis, ::Google::Cloud::ApigeeRegistry::V1::ListApisRequest, ::Google::Cloud::ApigeeRegistry::V1::ListApisResponse
            # Returns a specified API.
            rpc :GetApi, ::Google::Cloud::ApigeeRegistry::V1::GetApiRequest, ::Google::Cloud::ApigeeRegistry::V1::Api
            # Creates a specified API.
            rpc :CreateApi, ::Google::Cloud::ApigeeRegistry::V1::CreateApiRequest, ::Google::Cloud::ApigeeRegistry::V1::Api
            # Used to modify a specified API.
            rpc :UpdateApi, ::Google::Cloud::ApigeeRegistry::V1::UpdateApiRequest, ::Google::Cloud::ApigeeRegistry::V1::Api
            # Removes a specified API and all of the resources that it
            # owns.
            rpc :DeleteApi, ::Google::Cloud::ApigeeRegistry::V1::DeleteApiRequest, ::Google::Protobuf::Empty
            # Returns matching versions.
            rpc :ListApiVersions, ::Google::Cloud::ApigeeRegistry::V1::ListApiVersionsRequest, ::Google::Cloud::ApigeeRegistry::V1::ListApiVersionsResponse
            # Returns a specified version.
            rpc :GetApiVersion, ::Google::Cloud::ApigeeRegistry::V1::GetApiVersionRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiVersion
            # Creates a specified version.
            rpc :CreateApiVersion, ::Google::Cloud::ApigeeRegistry::V1::CreateApiVersionRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiVersion
            # Used to modify a specified version.
            rpc :UpdateApiVersion, ::Google::Cloud::ApigeeRegistry::V1::UpdateApiVersionRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiVersion
            # Removes a specified version and all of the resources that
            # it owns.
            rpc :DeleteApiVersion, ::Google::Cloud::ApigeeRegistry::V1::DeleteApiVersionRequest, ::Google::Protobuf::Empty
            # Returns matching specs.
            rpc :ListApiSpecs, ::Google::Cloud::ApigeeRegistry::V1::ListApiSpecsRequest, ::Google::Cloud::ApigeeRegistry::V1::ListApiSpecsResponse
            # Returns a specified spec.
            rpc :GetApiSpec, ::Google::Cloud::ApigeeRegistry::V1::GetApiSpecRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiSpec
            # Returns the contents of a specified spec.
            # If specs are stored with GZip compression, the default behavior
            # is to return the spec uncompressed (the mime_type response field
            # indicates the exact format returned).
            rpc :GetApiSpecContents, ::Google::Cloud::ApigeeRegistry::V1::GetApiSpecContentsRequest, ::Google::Api::HttpBody
            # Creates a specified spec.
            rpc :CreateApiSpec, ::Google::Cloud::ApigeeRegistry::V1::CreateApiSpecRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiSpec
            # Used to modify a specified spec.
            rpc :UpdateApiSpec, ::Google::Cloud::ApigeeRegistry::V1::UpdateApiSpecRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiSpec
            # Removes a specified spec, all revisions, and all child
            # resources (e.g., artifacts).
            rpc :DeleteApiSpec, ::Google::Cloud::ApigeeRegistry::V1::DeleteApiSpecRequest, ::Google::Protobuf::Empty
            # Adds a tag to a specified revision of a spec.
            rpc :TagApiSpecRevision, ::Google::Cloud::ApigeeRegistry::V1::TagApiSpecRevisionRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiSpec
            # Lists all revisions of a spec.
            # Revisions are returned in descending order of revision creation time.
            rpc :ListApiSpecRevisions, ::Google::Cloud::ApigeeRegistry::V1::ListApiSpecRevisionsRequest, ::Google::Cloud::ApigeeRegistry::V1::ListApiSpecRevisionsResponse
            # Sets the current revision to a specified prior revision.
            # Note that this creates a new revision with a new revision ID.
            rpc :RollbackApiSpec, ::Google::Cloud::ApigeeRegistry::V1::RollbackApiSpecRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiSpec
            # Deletes a revision of a spec.
            rpc :DeleteApiSpecRevision, ::Google::Cloud::ApigeeRegistry::V1::DeleteApiSpecRevisionRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiSpec
            # Returns matching deployments.
            rpc :ListApiDeployments, ::Google::Cloud::ApigeeRegistry::V1::ListApiDeploymentsRequest, ::Google::Cloud::ApigeeRegistry::V1::ListApiDeploymentsResponse
            # Returns a specified deployment.
            rpc :GetApiDeployment, ::Google::Cloud::ApigeeRegistry::V1::GetApiDeploymentRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiDeployment
            # Creates a specified deployment.
            rpc :CreateApiDeployment, ::Google::Cloud::ApigeeRegistry::V1::CreateApiDeploymentRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiDeployment
            # Used to modify a specified deployment.
            rpc :UpdateApiDeployment, ::Google::Cloud::ApigeeRegistry::V1::UpdateApiDeploymentRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiDeployment
            # Removes a specified deployment, all revisions, and all
            # child resources (e.g., artifacts).
            rpc :DeleteApiDeployment, ::Google::Cloud::ApigeeRegistry::V1::DeleteApiDeploymentRequest, ::Google::Protobuf::Empty
            # Adds a tag to a specified revision of a
            # deployment.
            rpc :TagApiDeploymentRevision, ::Google::Cloud::ApigeeRegistry::V1::TagApiDeploymentRevisionRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiDeployment
            # Lists all revisions of a deployment.
            # Revisions are returned in descending order of revision creation time.
            rpc :ListApiDeploymentRevisions, ::Google::Cloud::ApigeeRegistry::V1::ListApiDeploymentRevisionsRequest, ::Google::Cloud::ApigeeRegistry::V1::ListApiDeploymentRevisionsResponse
            # Sets the current revision to a specified prior
            # revision. Note that this creates a new revision with a new revision ID.
            rpc :RollbackApiDeployment, ::Google::Cloud::ApigeeRegistry::V1::RollbackApiDeploymentRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiDeployment
            # Deletes a revision of a deployment.
            rpc :DeleteApiDeploymentRevision, ::Google::Cloud::ApigeeRegistry::V1::DeleteApiDeploymentRevisionRequest, ::Google::Cloud::ApigeeRegistry::V1::ApiDeployment
            # Returns matching artifacts.
            rpc :ListArtifacts, ::Google::Cloud::ApigeeRegistry::V1::ListArtifactsRequest, ::Google::Cloud::ApigeeRegistry::V1::ListArtifactsResponse
            # Returns a specified artifact.
            rpc :GetArtifact, ::Google::Cloud::ApigeeRegistry::V1::GetArtifactRequest, ::Google::Cloud::ApigeeRegistry::V1::Artifact
            # Returns the contents of a specified artifact.
            # If artifacts are stored with GZip compression, the default behavior
            # is to return the artifact uncompressed (the mime_type response field
            # indicates the exact format returned).
            rpc :GetArtifactContents, ::Google::Cloud::ApigeeRegistry::V1::GetArtifactContentsRequest, ::Google::Api::HttpBody
            # Creates a specified artifact.
            rpc :CreateArtifact, ::Google::Cloud::ApigeeRegistry::V1::CreateArtifactRequest, ::Google::Cloud::ApigeeRegistry::V1::Artifact
            # Used to replace a specified artifact.
            rpc :ReplaceArtifact, ::Google::Cloud::ApigeeRegistry::V1::ReplaceArtifactRequest, ::Google::Cloud::ApigeeRegistry::V1::Artifact
            # Removes a specified artifact.
            rpc :DeleteArtifact, ::Google::Cloud::ApigeeRegistry::V1::DeleteArtifactRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
