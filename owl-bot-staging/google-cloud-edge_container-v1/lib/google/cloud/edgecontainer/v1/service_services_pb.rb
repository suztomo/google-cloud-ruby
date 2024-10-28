# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/edgecontainer/v1/service.proto for package 'Google.Cloud.EdgeContainer.V1'
# Original file comments:
# Copyright 2024 Google LLC
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
require 'google/cloud/edgecontainer/v1/service_pb'

module Google
  module Cloud
    module EdgeContainer
      module V1
        module EdgeContainer
          # EdgeContainer API provides management of Kubernetes Clusters on Google Edge
          # Cloud deployments.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.edgecontainer.v1.EdgeContainer'

            # Lists Clusters in a given project and location.
            rpc :ListClusters, ::Google::Cloud::EdgeContainer::V1::ListClustersRequest, ::Google::Cloud::EdgeContainer::V1::ListClustersResponse
            # Gets details of a single Cluster.
            rpc :GetCluster, ::Google::Cloud::EdgeContainer::V1::GetClusterRequest, ::Google::Cloud::EdgeContainer::V1::Cluster
            # Creates a new Cluster in a given project and location.
            rpc :CreateCluster, ::Google::Cloud::EdgeContainer::V1::CreateClusterRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Cluster.
            rpc :UpdateCluster, ::Google::Cloud::EdgeContainer::V1::UpdateClusterRequest, ::Google::Longrunning::Operation
            # Upgrades a single cluster.
            rpc :UpgradeCluster, ::Google::Cloud::EdgeContainer::V1::UpgradeClusterRequest, ::Google::Longrunning::Operation
            # Deletes a single Cluster.
            rpc :DeleteCluster, ::Google::Cloud::EdgeContainer::V1::DeleteClusterRequest, ::Google::Longrunning::Operation
            # Generates an access token for a Cluster.
            rpc :GenerateAccessToken, ::Google::Cloud::EdgeContainer::V1::GenerateAccessTokenRequest, ::Google::Cloud::EdgeContainer::V1::GenerateAccessTokenResponse
            # Generates an offline credential for a Cluster.
            rpc :GenerateOfflineCredential, ::Google::Cloud::EdgeContainer::V1::GenerateOfflineCredentialRequest, ::Google::Cloud::EdgeContainer::V1::GenerateOfflineCredentialResponse
            # Lists NodePools in a given project and location.
            rpc :ListNodePools, ::Google::Cloud::EdgeContainer::V1::ListNodePoolsRequest, ::Google::Cloud::EdgeContainer::V1::ListNodePoolsResponse
            # Gets details of a single NodePool.
            rpc :GetNodePool, ::Google::Cloud::EdgeContainer::V1::GetNodePoolRequest, ::Google::Cloud::EdgeContainer::V1::NodePool
            # Creates a new NodePool in a given project and location.
            rpc :CreateNodePool, ::Google::Cloud::EdgeContainer::V1::CreateNodePoolRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single NodePool.
            rpc :UpdateNodePool, ::Google::Cloud::EdgeContainer::V1::UpdateNodePoolRequest, ::Google::Longrunning::Operation
            # Deletes a single NodePool.
            rpc :DeleteNodePool, ::Google::Cloud::EdgeContainer::V1::DeleteNodePoolRequest, ::Google::Longrunning::Operation
            # Lists Machines in a given project and location.
            rpc :ListMachines, ::Google::Cloud::EdgeContainer::V1::ListMachinesRequest, ::Google::Cloud::EdgeContainer::V1::ListMachinesResponse
            # Gets details of a single Machine.
            rpc :GetMachine, ::Google::Cloud::EdgeContainer::V1::GetMachineRequest, ::Google::Cloud::EdgeContainer::V1::Machine
            # Lists VPN connections in a given project and location.
            rpc :ListVpnConnections, ::Google::Cloud::EdgeContainer::V1::ListVpnConnectionsRequest, ::Google::Cloud::EdgeContainer::V1::ListVpnConnectionsResponse
            # Gets details of a single VPN connection.
            rpc :GetVpnConnection, ::Google::Cloud::EdgeContainer::V1::GetVpnConnectionRequest, ::Google::Cloud::EdgeContainer::V1::VpnConnection
            # Creates a new VPN connection in a given project and location.
            rpc :CreateVpnConnection, ::Google::Cloud::EdgeContainer::V1::CreateVpnConnectionRequest, ::Google::Longrunning::Operation
            # Deletes a single VPN connection.
            rpc :DeleteVpnConnection, ::Google::Cloud::EdgeContainer::V1::DeleteVpnConnectionRequest, ::Google::Longrunning::Operation
            # Gets the server config.
            rpc :GetServerConfig, ::Google::Cloud::EdgeContainer::V1::GetServerConfigRequest, ::Google::Cloud::EdgeContainer::V1::ServerConfig
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
