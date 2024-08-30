# frozen_string_literal: true

# Copyright 2024 Google LLC
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
    module Spanner
      module Admin
        module Database
          module V1
            module DatabaseAdmin
              # Path helper methods for the DatabaseAdmin API.
              module Paths
                ##
                # Create a fully-qualified Backup resource string.
                #
                # The resource will be in the following format:
                #
                # `projects/{project}/instances/{instance}/backups/{backup}`
                #
                # @param project [String]
                # @param instance [String]
                # @param backup [String]
                #
                # @return [::String]
                def backup_path project:, instance:, backup:
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "instance cannot contain /" if instance.to_s.include? "/"

                  "projects/#{project}/instances/#{instance}/backups/#{backup}"
                end

                ##
                # Create a fully-qualified BackupSchedule resource string.
                #
                # The resource will be in the following format:
                #
                # `projects/{project}/instances/{instance}/databases/{database}/backupSchedules/{schedule}`
                #
                # @param project [String]
                # @param instance [String]
                # @param database [String]
                # @param schedule [String]
                #
                # @return [::String]
                def backup_schedule_path project:, instance:, database:, schedule:
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "instance cannot contain /" if instance.to_s.include? "/"
                  raise ::ArgumentError, "database cannot contain /" if database.to_s.include? "/"

                  "projects/#{project}/instances/#{instance}/databases/#{database}/backupSchedules/#{schedule}"
                end

                ##
                # Create a fully-qualified CryptoKey resource string.
                #
                # The resource will be in the following format:
                #
                # `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`
                #
                # @param project [String]
                # @param location [String]
                # @param key_ring [String]
                # @param crypto_key [String]
                #
                # @return [::String]
                def crypto_key_path project:, location:, key_ring:, crypto_key:
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "key_ring cannot contain /" if key_ring.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/keyRings/#{key_ring}/cryptoKeys/#{crypto_key}"
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
                # Create a fully-qualified Database resource string.
                #
                # The resource will be in the following format:
                #
                # `projects/{project}/instances/{instance}/databases/{database}`
                #
                # @param project [String]
                # @param instance [String]
                # @param database [String]
                #
                # @return [::String]
                def database_path project:, instance:, database:
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "instance cannot contain /" if instance.to_s.include? "/"

                  "projects/#{project}/instances/#{instance}/databases/#{database}"
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

                extend self
              end
            end
          end
        end
      end
    end
  end
end
