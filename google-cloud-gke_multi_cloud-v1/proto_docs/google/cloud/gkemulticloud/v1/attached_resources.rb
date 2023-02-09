# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module GkeMultiCloud
      module V1
        # An Anthos cluster running on customer own infrastructure.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of this resource.
        #
        #     Cluster names are formatted as
        #     `projects/<project-number>/locations/<region>/attachedClusters/<cluster-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud Platform resource names.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A human readable description of this cluster.
        #     Cannot be longer than 255 UTF-8 encoded bytes.
        # @!attribute [rw] oidc_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AttachedOidcConfig]
        #     Required. OpenID Connect (OIDC) configuration for the cluster.
        # @!attribute [rw] platform_version
        #   @return [::String]
        #     Required. The platform version for the cluster (e.g. `1.19.0-gke.1000`).
        #
        #     You can list all supported versions on a given Google Cloud region by
        #     calling
        #     {::Google::Cloud::GkeMultiCloud::V1::AttachedClusters::Client#get_attached_server_config GetAttachedServerConfig}.
        # @!attribute [rw] distribution
        #   @return [::String]
        #     Required. The Kubernetes distribution of the underlying attached cluster.
        #
        #     Supported values: ["eks", "aks"].
        # @!attribute [r] cluster_region
        #   @return [::String]
        #     Output only. The region where this cluster runs.
        #
        #     For EKS clusters, this is a AWS region. For AKS clusters,
        #     this is an Azure region.
        # @!attribute [rw] fleet
        #   @return [::Google::Cloud::GkeMultiCloud::V1::Fleet]
        #     Required. Fleet configuration.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AttachedCluster::State]
        #     Output only. The current state of the cluster.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. A globally unique identifier for the cluster.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. If set, there are currently changes in flight to the cluster.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this cluster was registered.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this cluster was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Allows clients to perform consistent read-modify-writes
        #     through optimistic concurrency control.
        #
        #     Can be sent on update and delete requests to ensure the
        #     client has an up-to-date value before proceeding.
        # @!attribute [r] kubernetes_version
        #   @return [::String]
        #     Output only. The Kubernetes version of the cluster.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Annotations on the cluster.
        #
        #     This field has the same restrictions as Kubernetes annotations.
        #     The total size of all keys and values combined is limited to 256k.
        #     Key can have 2 segments: prefix (optional) and name (required),
        #     separated by a slash (/).
        #     Prefix must be a DNS subdomain.
        #     Name must be 63 characters or less, begin and end with alphanumerics,
        #     with dashes (-), underscores (_), dots (.), and alphanumerics between.
        # @!attribute [r] workload_identity_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::WorkloadIdentityConfig]
        #     Output only. Workload Identity settings.
        # @!attribute [rw] logging_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::LoggingConfig]
        #     Optional. Logging configuration for this cluster.
        # @!attribute [r] errors
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AttachedClusterError>]
        #     Output only. A set of errors found in the cluster.
        # @!attribute [rw] authorization
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AttachedClustersAuthorization]
        #     Optional. Configuration related to the cluster RBAC settings.
        # @!attribute [rw] monitoring_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::MonitoringConfig]
        #     Optional. Monitoring configuration for this cluster.
        class AttachedCluster
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The lifecycle state of the cluster.
          module State

            # Not set.
            STATE_UNSPECIFIED = 0

            # The PROVISIONING state indicates the cluster is being registered.
            PROVISIONING = 1

            # The RUNNING state indicates the cluster has been register and is fully
            # usable.
            RUNNING = 2

            # The RECONCILING state indicates that some work is actively being done on
            # the cluster, such as upgrading software components.
            RECONCILING = 3

            # The STOPPING state indicates the cluster is being de-registered.
            STOPPING = 4

            # The ERROR state indicates the cluster is in a broken unrecoverable
            # state.
            ERROR = 5

            # The DEGRADED state indicates the cluster requires user action to
            # restore full functionality.
            DEGRADED = 6
          end
        end

        # Configuration related to the cluster RBAC settings.
        # @!attribute [rw] admin_users
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AttachedClusterUser>]
        #     Required. Users that can perform operations as a cluster admin. A managed
        #     ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole
        #     to the users. Up to ten admin users can be provided.
        #
        #     For more info on RBAC, see
        #     https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
        class AttachedClustersAuthorization
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Identities of a user-type subject for Attached clusters.
        # @!attribute [rw] username
        #   @return [::String]
        #     Required. The name of the user, e.g. `my-gcp-id@gmail.com`.
        class AttachedClusterUser
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # OIDC discovery information of the target cluster.
        #
        # Kubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster
        # API server. This fields indicates how Google Cloud Platform services
        # validate KSA tokens in order to allow system workloads (such as GKE Connect
        # and telemetry agents) to authenticate back to Google Cloud Platform.
        #
        # Both clusters with public and private issuer URLs are supported.
        # Clusters with public issuers only need to specify the `issuer_url` field
        # while clusters with private issuers need to provide both
        # `issuer_url` and `oidc_jwks`.
        # @!attribute [rw] issuer_url
        #   @return [::String]
        #     A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://`.
        # @!attribute [rw] jwks
        #   @return [::String]
        #     Optional. OIDC verification keys in JWKS format (RFC 7517).
        #     It contains a list of OIDC verification keys that can be used to verify
        #     OIDC JWTs.
        #
        #     This field is required for cluster that doesn't have a publicly available
        #     discovery endpoint. When provided, it will be directly used
        #     to verify the OIDC JWT asserted by the IDP.
        class AttachedOidcConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # AttachedServerConfig provides information about supported
        # Kubernetes versions
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the config.
        # @!attribute [rw] valid_versions
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AttachedPlatformVersionInfo>]
        #     List of valid platform versions.
        class AttachedServerConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Information about a supported Attached Clusters platform version.
        # @!attribute [rw] version
        #   @return [::String]
        #     Platform version name.
        class AttachedPlatformVersionInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # AttachedClusterError describes errors found on attached clusters.
        # @!attribute [rw] message
        #   @return [::String]
        #     Human-friendly description of the error.
        class AttachedClusterError
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

