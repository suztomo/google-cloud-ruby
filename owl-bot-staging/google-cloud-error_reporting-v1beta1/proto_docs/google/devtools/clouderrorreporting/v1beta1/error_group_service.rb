# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module ErrorReporting
      module V1beta1
        # A request to return an individual group.
        # @!attribute [rw] group_name
        #   @return [::String]
        #     Required. The group resource name. Written as
        #     `projects/{projectID}/groups/{group_name}`. Call
        #     [`groupStats.list`](https://cloud.google.com/error-reporting/reference/rest/v1beta1/projects.groupStats/list)
        #     to return a list of groups belonging to this project.
        #
        #     Example: `projects/my-project-123/groups/my-group`
        class GetGroupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to replace the existing data for the given group.
        # @!attribute [rw] group
        #   @return [::Google::Cloud::ErrorReporting::V1beta1::ErrorGroup]
        #     Required. The group which replaces the resource on the server.
        class UpdateGroupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

