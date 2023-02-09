# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Bigtable
      module Admin
        module V2
          module BigtableTableAdmin
            # Path helper methods for the BigtableTableAdmin API.
            module Paths
              ##
              # Create a fully-qualified Backup resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup}`
              #
              # @param project [String]
              # @param instance [String]
              # @param cluster [String]
              # @param backup [String]
              #
              # @return [::String]
              def backup_path project:, instance:, cluster:, backup:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "instance cannot contain /" if instance.to_s.include? "/"
                raise ::ArgumentError, "cluster cannot contain /" if cluster.to_s.include? "/"

                "projects/#{project}/instances/#{instance}/clusters/#{cluster}/backups/#{backup}"
              end

              ##
              # Create a fully-qualified Cluster resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/instances/{instance}/clusters/{cluster}`
              #
              # @param project [String]
              # @param instance [String]
              # @param cluster [String]
              #
              # @return [::String]
              def cluster_path project:, instance:, cluster:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "instance cannot contain /" if instance.to_s.include? "/"

                "projects/#{project}/instances/#{instance}/clusters/#{cluster}"
              end

              ##
              # Create a fully-qualified CryptoKeyVersion resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`
              #
              # @param project [String]
              # @param location [String]
              # @param key_ring [String]
              # @param crypto_key [String]
              # @param crypto_key_version [String]
              #
              # @return [::String]
              def crypto_key_version_path project:, location:, key_ring:, crypto_key:, crypto_key_version:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "key_ring cannot contain /" if key_ring.to_s.include? "/"
                raise ::ArgumentError, "crypto_key cannot contain /" if crypto_key.to_s.include? "/"

                "projects/#{project}/locations/#{location}/keyRings/#{key_ring}/cryptoKeys/#{crypto_key}/cryptoKeyVersions/#{crypto_key_version}"
              end

              ##
              # Create a fully-qualified Instance resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/instances/{instance}`
              #
              # @param project [String]
              # @param instance [String]
              #
              # @return [::String]
              def instance_path project:, instance:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                "projects/#{project}/instances/#{instance}"
              end

              ##
              # Create a fully-qualified Snapshot resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/instances/{instance}/clusters/{cluster}/snapshots/{snapshot}`
              #
              # @param project [String]
              # @param instance [String]
              # @param cluster [String]
              # @param snapshot [String]
              #
              # @return [::String]
              def snapshot_path project:, instance:, cluster:, snapshot:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "instance cannot contain /" if instance.to_s.include? "/"
                raise ::ArgumentError, "cluster cannot contain /" if cluster.to_s.include? "/"

                "projects/#{project}/instances/#{instance}/clusters/#{cluster}/snapshots/#{snapshot}"
              end

              ##
              # Create a fully-qualified Table resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/instances/{instance}/tables/{table}`
              #
              # @param project [String]
              # @param instance [String]
              # @param table [String]
              #
              # @return [::String]
              def table_path project:, instance:, table:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "instance cannot contain /" if instance.to_s.include? "/"

                "projects/#{project}/instances/#{instance}/tables/#{table}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end

