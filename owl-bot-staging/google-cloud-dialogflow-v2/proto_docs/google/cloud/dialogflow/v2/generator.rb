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
        # Request message of CreateGenerator.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project/location to create generator for. Format:
        #     `projects/<Project ID>/locations/<Location ID>`
        # @!attribute [rw] generator
        #   @return [::Google::Cloud::Dialogflow::V2::Generator]
        #     Required. The generator to create.
        # @!attribute [rw] generator_id
        #   @return [::String]
        #     Optional. The ID to use for the generator, which will become the final
        #     component of the generator's resource name.
        #
        #     The generator ID must be compliant with the regression fomula
        #     `[a-zA-Z][a-zA-Z0-9_-]*` with the characters length in range of [3,64].
        #     If the field is not provided, an Id will be auto-generated.
        #     If the field is provided, the caller is resposible for
        #     1. the uniqueness of the ID, otherwise the request will be rejected.
        #     2. the consistency for whether to use custom ID or not under a project to
        #     better ensure uniqueness.
        class CreateGeneratorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message of GetGenerator.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The generator resource name to retrieve. Format:
        #     `projects/<Project ID>/locations/<Location ID>`/generators/<Generator ID>`
        class GetGeneratorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message of ListGenerators.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project/location to list generators for. Format:
        #     `projects/<Project ID>/locations/<Location ID>`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of conversation models to return in a single page.
        #     Default to 10.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListGeneratorsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of ListGenerators.
        # @!attribute [rw] generators
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::Generator>]
        #     List of generators retrieved.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListGeneratorsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request of DeleteGenerator.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The generator resource name to delete. Format:
        #     `projects/<Project ID>/locations/<Location ID>/generators/<Generator ID>`
        class DeleteGeneratorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request of UpdateGenerator.
        # @!attribute [rw] generator
        #   @return [::Google::Cloud::Dialogflow::V2::Generator]
        #     Required. The generator to update.
        #     The name field of generator is to identify the generator to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. The list of fields to update.
        class UpdateGeneratorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a message entry of a conversation.
        # @!attribute [rw] role
        #   @return [::Google::Cloud::Dialogflow::V2::MessageEntry::Role]
        #     Optional. Participant role of the message.
        # @!attribute [rw] text
        #   @return [::String]
        #     Optional. Transcript content of the message.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language of the text. See [Language
        #     Support](https://cloud.google.com/dialogflow/docs/reference/language) for a
        #     list of the currently supported language codes.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. Create time of the message entry.
        class MessageEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enumeration of the roles a participant can play in a conversation.
          module Role
            # Participant role not set.
            ROLE_UNSPECIFIED = 0

            # Participant is a human agent.
            HUMAN_AGENT = 1

            # Participant is an automated agent, such as a Dialogflow agent.
            AUTOMATED_AGENT = 2

            # Participant is an end user that has called or chatted with
            # Dialogflow services.
            END_USER = 3
          end
        end

        # Context of the conversation, including transcripts.
        # @!attribute [rw] message_entries
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::MessageEntry>]
        #     Optional. List of message transcripts in the conversation.
        class ConversationContext
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List of summarization sections.
        # @!attribute [rw] summarization_sections
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::SummarizationSection>]
        #     Optional. Summarization sections.
        class SummarizationSectionList
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Providing examples in the generator (i.e. building a few-shot generator)
        # helps convey the desired format of the LLM response.
        # NEXT_ID: 10
        # @!attribute [rw] conversation_context
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationContext]
        #     Optional. Conversation transcripts.
        # @!attribute [rw] extra_info
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Key is the placeholder field name in input, value is the value of
        #     the placeholder. E.g. instruction contains "@price", and ingested data has
        #     <"price", "10">
        # @!attribute [rw] summarization_section_list
        #   @return [::Google::Cloud::Dialogflow::V2::SummarizationSectionList]
        #     Summarization sections.
        # @!attribute [rw] output
        #   @return [::Google::Cloud::Dialogflow::V2::GeneratorSuggestion]
        #     Required. Example output of the model.
        class FewShotExample
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class ExtraInfoEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The parameters of inference.
        # @!attribute [rw] max_output_tokens
        #   @return [::Integer]
        #     Optional. Maximum number of the output tokens for the generator.
        # @!attribute [rw] temperature
        #   @return [::Float]
        #     Optional. Controls the randomness of LLM predictions.
        #     Low temperature = less random. High temperature = more random.
        #     If unset (or 0), uses a default value of 0.
        # @!attribute [rw] top_k
        #   @return [::Integer]
        #     Optional. Top-k changes how the model selects tokens for output. A top-k of
        #     1 means the selected token is the most probable among all tokens in the
        #     model's vocabulary (also called greedy decoding), while a top-k of 3 means
        #     that the next token is selected from among the 3 most probable tokens
        #     (using temperature). For each token selection step, the top K tokens with
        #     the highest probabilities are sampled. Then tokens are further filtered
        #     based on topP with the final token selected using temperature sampling.
        #     Specify a lower value for less random responses and a higher value for more
        #     random responses. Acceptable value is [1, 40], default to 40.
        # @!attribute [rw] top_p
        #   @return [::Float]
        #     Optional. Top-p changes how the model selects tokens for output. Tokens are
        #     selected from most K (see topK parameter) probable to least until the sum
        #     of their probabilities equals the top-p value. For example, if tokens A, B,
        #     and C have a probability of 0.3, 0.2, and 0.1 and the top-p value is 0.5,
        #     then the model will select either A or B as the next token (using
        #     temperature) and doesn't consider C. The default top-p value is 0.95.
        #     Specify a lower value for less random responses and a higher value for more
        #     random responses. Acceptable value is [0.0, 1.0], default to 0.95.
        class InferenceParameter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the section of summarization.
        # @!attribute [rw] key
        #   @return [::String]
        #     Optional. Name of the section, for example, "situation".
        # @!attribute [rw] definition
        #   @return [::String]
        #     Optional. Definition of the section, for example, "what the customer needs
        #     help with or has question about."
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Dialogflow::V2::SummarizationSection::Type]
        #     Optional. Type of the summarization section.
        class SummarizationSection
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Type enum of the summarization sections.
          module Type
            # Undefined section type, does not return anything.
            TYPE_UNSPECIFIED = 0

            # What the customer needs help with or has question about.
            # Section name: "situation".
            SITUATION = 1

            # What the agent does to help the customer.
            # Section name: "action".
            ACTION = 2

            # Result of the customer service. A single word describing the result
            # of the conversation.
            # Section name: "resolution".
            RESOLUTION = 3

            # Reason for cancellation if the customer requests for a cancellation.
            # "N/A" otherwise.
            # Section name: "reason_for_cancellation".
            REASON_FOR_CANCELLATION = 4

            # "Unsatisfied" or "Satisfied" depending on the customer's feelings at
            # the end of the conversation.
            # Section name: "customer_satisfaction".
            CUSTOMER_SATISFACTION = 5

            # Key entities extracted from the conversation, such as ticket number,
            # order number, dollar amount, etc.
            # Section names are prefixed by "entities/".
            ENTITIES = 6

            # Customer defined sections.
            CUSTOMER_DEFINED = 7
          end
        end

        # Summarization context that customer can configure.
        # @!attribute [rw] summarization_sections
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::SummarizationSection>]
        #     Optional. List of sections. Note it contains both predefined section sand
        #     customer defined sections.
        # @!attribute [rw] few_shot_examples
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::FewShotExample>]
        #     Optional. List of few shot examples.
        # @!attribute [rw] version
        #   @return [::String]
        #     Optional. Version of the feature. If not set, default to latest version.
        #     Current candidates are ["1.0"].
        # @!attribute [rw] output_language_code
        #   @return [::String]
        #     Optional. The target language of the generated summary. The language code
        #     for conversation will be used if this field is empty. Supported 2.0 and
        #     later versions.
        class SummarizationContext
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # LLM generator.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Identifier. The resource name of the generator. Format:
        #     `projects/<Project ID>/locations/<Location ID>/generators/<Generator ID>`
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Human readable description of the generator.
        # @!attribute [rw] summarization_context
        #   @return [::Google::Cloud::Dialogflow::V2::SummarizationContext]
        #     Input of prebuilt Summarization feature.
        # @!attribute [rw] inference_parameter
        #   @return [::Google::Cloud::Dialogflow::V2::InferenceParameter]
        #     Optional. Inference parameters for this generator.
        # @!attribute [rw] trigger_event
        #   @return [::Google::Cloud::Dialogflow::V2::TriggerEvent]
        #     Optional. The trigger event of the generator. It defines when the generator
        #     is triggered in a conversation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation time of this generator.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Update time of this generator.
        class Generator
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Suggested summary of the conversation.
        # @!attribute [rw] summary_sections
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::SummarySuggestion::SummarySection>]
        #     Required. All the parts of generated summary.
        class SummarySuggestion
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A component of the generated summary.
          # @!attribute [rw] section
          #   @return [::String]
          #     Required. Name of the section.
          # @!attribute [rw] summary
          #   @return [::String]
          #     Required. Summary text for the section.
          class SummarySection
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Suggestion generated using a Generator.
        # @!attribute [rw] summary_suggestion
        #   @return [::Google::Cloud::Dialogflow::V2::SummarySuggestion]
        #     Optional. Suggested summary.
        class GeneratorSuggestion
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The event that triggers the generator and LLM execution.
        module TriggerEvent
          # Default value for TriggerEvent.
          TRIGGER_EVENT_UNSPECIFIED = 0

          # Triggers when each chat message or voice utterance ends.
          END_OF_UTTERANCE = 1

          # Triggers on the conversation manually by API calls, such as
          # Conversations.GenerateStatelessSuggestion and
          # Conversations.GenerateSuggestions.
          MANUAL_CALL = 2
        end
      end
    end
  end
end
