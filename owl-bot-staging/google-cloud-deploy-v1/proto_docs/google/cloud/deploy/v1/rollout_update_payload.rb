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
    module Deploy
      module V1
        # Payload proto for "clouddeploy.googleapis.com/rollout_update"
        # Platform Log event that describes the rollout update event.
        # @!attribute [rw] message
        #   @return [::String]
        #     Debug message for when a rollout update event occurs.
        # @!attribute [rw] pipeline_uid
        #   @return [::String]
        #     Unique identifier of the pipeline.
        # @!attribute [rw] release_uid
        #   @return [::String]
        #     Unique identifier of the release.
        # @!attribute [rw] release
        #   @return [::String]
        #     The name of the `Release`.
        # @!attribute [rw] rollout
        #   @return [::String]
        #     The name of the rollout.
        #     rollout_uid is not in this log message because we write some of these log
        #     messages at rollout creation time, before we've generated the uid.
        # @!attribute [rw] target_id
        #   @return [::String]
        #     ID of the target.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Deploy::V1::Type]
        #     Type of this notification, e.g. for a rollout update event.
        # @!attribute [rw] rollout_update_type
        #   @return [::Google::Cloud::Deploy::V1::RolloutUpdateEvent::RolloutUpdateType]
        #     The type of the rollout update.
        class RolloutUpdateEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # RolloutUpdateType indicates the type of the rollout update.
          module RolloutUpdateType
            # Rollout update type unspecified.
            ROLLOUT_UPDATE_TYPE_UNSPECIFIED = 0

            # rollout state updated to pending.
            PENDING = 1

            # Rollout state updated to pending release.
            PENDING_RELEASE = 2

            # Rollout state updated to in progress.
            IN_PROGRESS = 3

            # Rollout state updated to cancelling.
            CANCELLING = 4

            # Rollout state updated to cancelled.
            CANCELLED = 5

            # Rollout state updated to halted.
            HALTED = 6

            # Rollout state updated to succeeded.
            SUCCEEDED = 7

            # Rollout state updated to failed.
            FAILED = 8

            # Rollout requires approval.
            APPROVAL_REQUIRED = 9

            # Rollout has been approved.
            APPROVED = 10

            # Rollout has been rejected.
            REJECTED = 11

            # Rollout requires advance to the next phase.
            ADVANCE_REQUIRED = 12

            # Rollout has been advanced.
            ADVANCED = 13
          end
        end
      end
    end
  end
end
