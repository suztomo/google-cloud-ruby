# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dataproc/v1/clusters.proto for package 'google.cloud.dataproc.v1'
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
require 'google/cloud/dataproc/v1/clusters_pb'

module Google
  module Cloud
    module Dataproc
      module V1
        module ClusterController
          # The ClusterControllerService provides methods to manage clusters
          # of Compute Engine instances.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dataproc.v1.ClusterController'

            # Creates a cluster in a project. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] will be
            # [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).
            rpc :CreateCluster, ::Google::Cloud::Dataproc::V1::CreateClusterRequest, ::Google::Longrunning::Operation
            # Updates a cluster in a project. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] will be
            # [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).
            # The cluster must be in a
            # [`RUNNING`][google.cloud.dataproc.v1.ClusterStatus.State] state or an error
            # is returned.
            rpc :UpdateCluster, ::Google::Cloud::Dataproc::V1::UpdateClusterRequest, ::Google::Longrunning::Operation
            # Stops a cluster in a project.
            rpc :StopCluster, ::Google::Cloud::Dataproc::V1::StopClusterRequest, ::Google::Longrunning::Operation
            # Starts a cluster in a project.
            rpc :StartCluster, ::Google::Cloud::Dataproc::V1::StartClusterRequest, ::Google::Longrunning::Operation
            # Deletes a cluster in a project. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] will be
            # [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).
            rpc :DeleteCluster, ::Google::Cloud::Dataproc::V1::DeleteClusterRequest, ::Google::Longrunning::Operation
            # Gets the resource representation for a cluster in a project.
            rpc :GetCluster, ::Google::Cloud::Dataproc::V1::GetClusterRequest, ::Google::Cloud::Dataproc::V1::Cluster
            # Lists all regions/{region}/clusters in a project alphabetically.
            rpc :ListClusters, ::Google::Cloud::Dataproc::V1::ListClustersRequest, ::Google::Cloud::Dataproc::V1::ListClustersResponse
            # Gets cluster diagnostic information. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] will be
            # [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#clusteroperationmetadata).
            # After the operation completes,
            # [Operation.response][google.longrunning.Operation.response]
            # contains
            # [DiagnoseClusterResults](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#diagnoseclusterresults).
            rpc :DiagnoseCluster, ::Google::Cloud::Dataproc::V1::DiagnoseClusterRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
