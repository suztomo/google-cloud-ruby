# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module ResourceManager
      module V3
        # A folder in an organization's resource hierarchy, used to
        # organize that organization's resources.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the folder.
        #     Its format is `folders/{folder_id}`, for example: "folders/1234".
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The folder's parent's resource name.
        #     Updates to the folder's parent must be performed using
        #     {::Google::Cloud::ResourceManager::V3::Folders::Client#move_folder MoveFolder}.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The folder's display name.
        #     A folder's display name must be unique amongst its siblings. For example,
        #     no two folders with the same parent can share the same display name.
        #     The display name must start and end with a letter or digit, may contain
        #     letters, digits, spaces, hyphens and underscores and can be no longer
        #     than 30 characters. This is captured by the regular expression:
        #     `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
        # @!attribute [r] state
        #   @return [::Google::Cloud::ResourceManager::V3::Folder::State]
        #     Output only. The lifecycle state of the folder.
        #     Updates to the state must be performed using
        #     {::Google::Cloud::ResourceManager::V3::Folders::Client#delete_folder DeleteFolder} and
        #     {::Google::Cloud::ResourceManager::V3::Folders::Client#undelete_folder UndeleteFolder}.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when the folder was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when the folder was last modified.
        # @!attribute [r] delete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when the folder was requested to be deleted.
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. A checksum computed by the server based on the current value of the folder
        #     resource. This may be sent on update and delete requests to ensure the
        #     client has an up-to-date value before proceeding.
        class Folder
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Folder lifecycle states.
          module State

            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # The normal and active state.
            ACTIVE = 1

            # The folder has been marked for deletion by the user.
            DELETE_REQUESTED = 2
          end
        end

        # The GetFolder request message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the folder to retrieve.
        #     Must be of the form `folders/{folder_id}`.
        class GetFolderRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The ListFolders request message.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the organization or folder whose folders are
        #     being listed.
        #     Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
        #     Access to this method is controlled by checking the
        #     `resourcemanager.folders.list` permission on the `parent`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of folders to return in the response.
        #     If unspecified, server picks an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A pagination token returned from a previous call to `ListFolders`
        #     that indicates where this listing should continue from.
        # @!attribute [rw] show_deleted
        #   @return [::Boolean]
        #     Optional. Controls whether folders in the
        #     {::Google::Cloud::ResourceManager::V3::Folder::State::DELETE_REQUESTED DELETE_REQUESTED}
        #     state should be returned. Defaults to false.
        class ListFoldersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The ListFolders response message.
        # @!attribute [rw] folders
        #   @return [::Array<::Google::Cloud::ResourceManager::V3::Folder>]
        #     A possibly paginated list of folders that are direct descendants of
        #     the specified parent resource.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A pagination token returned from a previous call to `ListFolders`
        #     that indicates from where listing should continue.
        class ListFoldersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for searching folders.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of folders to return in the response.
        #     If unspecified, server picks an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A pagination token returned from a previous call to `SearchFolders`
        #     that indicates from where search should continue.
        # @!attribute [rw] query
        #   @return [::String]
        #     Optional. Search criteria used to select the folders to return.
        #     If no search criteria is specified then all accessible folders will be
        #     returned.
        #
        #     Query expressions can be used to restrict results based upon displayName,
        #     state and parent, where the operators `=` (`:`) `NOT`, `AND` and `OR`
        #     can be used along with the suffix wildcard symbol `*`.
        #
        #     The `displayName` field in a query expression should use escaped quotes
        #     for values that include whitespace to prevent unexpected behavior.
        #
        #     ```
        #     | Field                   | Description                            |
        #     |-------------------------|----------------------------------------|
        #     | displayName             | Filters by displayName.                |
        #     | parent                  | Filters by parent (for example: folders/123). |
        #     | state, lifecycleState   | Filters by state.                      |
        #     ```
        #
        #     Some example queries are:
        #
        #     * Query `displayName=Test*` returns Folder resources whose display name
        #     starts with "Test".
        #     * Query `state=ACTIVE` returns Folder resources with
        #     `state` set to `ACTIVE`.
        #     * Query `parent=folders/123` returns Folder resources that have
        #     `folders/123` as a parent resource.
        #     * Query `parent=folders/123 AND state=ACTIVE` returns active
        #     Folder resources that have `folders/123` as a parent resource.
        #     * Query `displayName=\\"Test String\\"` returns Folder resources with
        #     display names that include both "Test" and "String".
        class SearchFoldersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for searching folders.
        # @!attribute [rw] folders
        #   @return [::Array<::Google::Cloud::ResourceManager::V3::Folder>]
        #     A possibly paginated folder search results.
        #     the specified parent resource.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A pagination token returned from a previous call to `SearchFolders`
        #     that indicates from where searching should continue.
        class SearchFoldersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The CreateFolder request message.
        # @!attribute [rw] folder
        #   @return [::Google::Cloud::ResourceManager::V3::Folder]
        #     Required. The folder being created, only the display name and parent will be
        #     consulted. All other fields will be ignored.
        class CreateFolderRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata pertaining to the Folder creation process.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the folder.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The resource name of the folder or organization we are creating the folder
        #     under.
        class CreateFolderMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request sent to the
        # [UpdateFolder][google.cloud.resourcemanager.v3.Folder.UpdateFolder]
        # method.
        #
        # Only the `display_name` field can be changed. All other fields will be
        # ignored. Use the
        # {::Google::Cloud::ResourceManager::V3::Folders::Client#move_folder MoveFolder} method to
        # change the `parent` field.
        # @!attribute [rw] folder
        #   @return [::Google::Cloud::ResourceManager::V3::Folder]
        #     Required. The new definition of the Folder. It must include the `name` field, which
        #     cannot be changed.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Fields to be updated.
        #     Only the `display_name` can be updated.
        class UpdateFolderRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A status object which is used as the `metadata` field for the Operation
        # returned by UpdateFolder.
        class UpdateFolderMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The MoveFolder request message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the Folder to move.
        #     Must be of the form folders/\\{folder_id}
        # @!attribute [rw] destination_parent
        #   @return [::String]
        #     Required. The resource name of the folder or organization which should be the
        #     folder's new parent.
        #     Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
        class MoveFolderRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata pertaining to the folder move process.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the folder.
        # @!attribute [rw] source_parent
        #   @return [::String]
        #     The resource name of the folder's parent.
        # @!attribute [rw] destination_parent
        #   @return [::String]
        #     The resource name of the folder or organization to move the folder to.
        class MoveFolderMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The DeleteFolder request message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the folder to be deleted.
        #     Must be of the form `folders/{folder_id}`.
        class DeleteFolderRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A status object which is used as the `metadata` field for the `Operation`
        # returned by `DeleteFolder`.
        class DeleteFolderMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The UndeleteFolder request message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the folder to undelete.
        #     Must be of the form `folders/{folder_id}`.
        class UndeleteFolderRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A status object which is used as the `metadata` field for the `Operation`
        # returned by `UndeleteFolder`.
        class UndeleteFolderMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

