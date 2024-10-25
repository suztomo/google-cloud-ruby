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
    module Dialogflow
      module V2
        # Each intent parameter has a type, called the entity type, which dictates
        # exactly how data from an end-user expression is extracted.
        #
        # Dialogflow provides predefined system entities that can match many common
        # types of data. For example, there are system entities for matching dates,
        # times, colors, email addresses, and so on. You can also create your own
        # custom entities for matching custom data. For example, you could define a
        # vegetable entity that can match the types of vegetables available for
        # purchase with a grocery store agent.
        #
        # For more information, see the
        # [Entity guide](https://cloud.google.com/dialogflow/docs/entities-overview).
        # @!attribute [rw] name
        #   @return [::String]
        #     The unique identifier of the entity type.
        #     Required for
        #     {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#update_entity_type EntityTypes.UpdateEntityType}
        #     and
        #     {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#batch_update_entity_types EntityTypes.BatchUpdateEntityTypes}
        #     methods. Format: `projects/<Project ID>/agent/entityTypes/<Entity Type
        #     ID>`.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The name of the entity type.
        # @!attribute [rw] kind
        #   @return [::Google::Cloud::Dialogflow::V2::EntityType::Kind]
        #     Required. Indicates the kind of entity type.
        # @!attribute [rw] auto_expansion_mode
        #   @return [::Google::Cloud::Dialogflow::V2::EntityType::AutoExpansionMode]
        #     Optional. Indicates whether the entity type can be automatically
        #     expanded.
        # @!attribute [rw] entities
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::EntityType::Entity>]
        #     Optional. The collection of entity entries associated with the entity type.
        # @!attribute [rw] enable_fuzzy_extraction
        #   @return [::Boolean]
        #     Optional. Enables fuzzy entity extraction during classification.
        class EntityType
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # An **entity entry** for an associated entity type.
          # @!attribute [rw] value
          #   @return [::String]
          #     Required. The primary value associated with this entity entry.
          #     For example, if the entity type is *vegetable*, the value could be
          #     *scallions*.
          #
          #     For `KIND_MAP` entity types:
          #
          #     *   A reference value to be used in place of synonyms.
          #
          #     For `KIND_LIST` entity types:
          #
          #     *   A string that can contain references to other entity types (with or
          #         without aliases).
          # @!attribute [rw] synonyms
          #   @return [::Array<::String>]
          #     Required. A collection of value synonyms. For example, if the entity type
          #     is *vegetable*, and `value` is *scallions*, a synonym could be *green
          #     onions*.
          #
          #     For `KIND_LIST` entity types:
          #
          #     *   This collection must contain exactly one synonym equal to `value`.
          class Entity
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents kinds of entities.
          module Kind
            # Not specified. This value should be never used.
            KIND_UNSPECIFIED = 0

            # Map entity types allow mapping of a group of synonyms to a reference
            # value.
            KIND_MAP = 1

            # List entity types contain a set of entries that do not map to reference
            # values. However, list entity types can contain references to other entity
            # types (with or without aliases).
            KIND_LIST = 2

            # Regexp entity types allow to specify regular expressions in entries
            # values.
            KIND_REGEXP = 3
          end

          # Represents different entity type expansion modes. Automated expansion
          # allows an agent to recognize values that have not been explicitly listed in
          # the entity (for example, new kinds of shopping list items).
          module AutoExpansionMode
            # Auto expansion disabled for the entity.
            AUTO_EXPANSION_MODE_UNSPECIFIED = 0

            # Allows an agent to recognize values that have not been explicitly
            # listed in the entity.
            AUTO_EXPANSION_MODE_DEFAULT = 1
          end
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#list_entity_types EntityTypes.ListEntityTypes}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The agent to list all entity types from.
        #     Format: `projects/<Project ID>/agent`.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language used to access language-specific data.
        #     If not specified, the agent's default language is used.
        #     For more information, see
        #     [Multilingual intent and entity
        #     data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return in a single page. By
        #     default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListEntityTypesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#list_entity_types EntityTypes.ListEntityTypes}.
        # @!attribute [rw] entity_types
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::EntityType>]
        #     The list of agent entity types. There will be a maximum number of items
        #     returned based on the page_size field in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     more results in the list.
        class ListEntityTypesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#get_entity_type EntityTypes.GetEntityType}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the entity type.
        #     Format: `projects/<Project ID>/agent/entityTypes/<EntityType ID>`.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language used to access language-specific data.
        #     If not specified, the agent's default language is used.
        #     For more information, see
        #     [Multilingual intent and entity
        #     data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
        class GetEntityTypeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#create_entity_type EntityTypes.CreateEntityType}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The agent to create a entity type for.
        #     Format: `projects/<Project ID>/agent`.
        # @!attribute [rw] entity_type
        #   @return [::Google::Cloud::Dialogflow::V2::EntityType]
        #     Required. The entity type to create.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language used to access language-specific data.
        #     If not specified, the agent's default language is used.
        #     For more information, see
        #     [Multilingual intent and entity
        #     data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
        class CreateEntityTypeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#update_entity_type EntityTypes.UpdateEntityType}.
        # @!attribute [rw] entity_type
        #   @return [::Google::Cloud::Dialogflow::V2::EntityType]
        #     Required. The entity type to update.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language used to access language-specific data.
        #     If not specified, the agent's default language is used.
        #     For more information, see
        #     [Multilingual intent and entity
        #     data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. The mask to control which fields get updated.
        class UpdateEntityTypeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#delete_entity_type EntityTypes.DeleteEntityType}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the entity type to delete.
        #     Format: `projects/<Project ID>/agent/entityTypes/<EntityType ID>`.
        class DeleteEntityTypeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#batch_update_entity_types EntityTypes.BatchUpdateEntityTypes}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the agent to update or create entity types in.
        #     Format: `projects/<Project ID>/agent`.
        # @!attribute [rw] entity_type_batch_uri
        #   @return [::String]
        #     The URI to a Google Cloud Storage file containing entity types to update
        #     or create. The file format can either be a serialized proto (of
        #     EntityBatch type) or a JSON object. Note: The URI must start with
        #     "gs://".
        # @!attribute [rw] entity_type_batch_inline
        #   @return [::Google::Cloud::Dialogflow::V2::EntityTypeBatch]
        #     The collection of entity types to update or create.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language used to access language-specific data.
        #     If not specified, the agent's default language is used.
        #     For more information, see
        #     [Multilingual intent and entity
        #     data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. The mask to control which fields get updated.
        class BatchUpdateEntityTypesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#batch_update_entity_types EntityTypes.BatchUpdateEntityTypes}.
        # @!attribute [rw] entity_types
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::EntityType>]
        #     The collection of updated or created entity types.
        class BatchUpdateEntityTypesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#batch_delete_entity_types EntityTypes.BatchDeleteEntityTypes}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the agent to delete all entities types for. Format:
        #     `projects/<Project ID>/agent`.
        # @!attribute [rw] entity_type_names
        #   @return [::Array<::String>]
        #     Required. The names entity types to delete. All names must point to the
        #     same agent as `parent`.
        class BatchDeleteEntityTypesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#batch_create_entities EntityTypes.BatchCreateEntities}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the entity type to create entities in. Format:
        #     `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
        # @!attribute [rw] entities
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::EntityType::Entity>]
        #     Required. The entities to create.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language used to access language-specific data.
        #     If not specified, the agent's default language is used.
        #     For more information, see
        #     [Multilingual intent and entity
        #     data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
        class BatchCreateEntitiesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#batch_update_entities EntityTypes.BatchUpdateEntities}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the entity type to update or create entities in.
        #     Format: `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
        # @!attribute [rw] entities
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::EntityType::Entity>]
        #     Required. The entities to update or create.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language used to access language-specific data.
        #     If not specified, the agent's default language is used.
        #     For more information, see
        #     [Multilingual intent and entity
        #     data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. The mask to control which fields get updated.
        class BatchUpdateEntitiesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::EntityTypes::Client#batch_delete_entities EntityTypes.BatchDeleteEntities}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the entity type to delete entries for. Format:
        #     `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
        # @!attribute [rw] entity_values
        #   @return [::Array<::String>]
        #     Required. The reference `values` of the entities to delete. Note that
        #     these are not fully-qualified names, i.e. they don't start with
        #     `projects/<Project ID>`.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language used to access language-specific data.
        #     If not specified, the agent's default language is used.
        #     For more information, see
        #     [Multilingual intent and entity
        #     data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
        class BatchDeleteEntitiesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # This message is a wrapper around a collection of entity types.
        # @!attribute [rw] entity_types
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::EntityType>]
        #     A collection of entity types.
        class EntityTypeBatch
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
