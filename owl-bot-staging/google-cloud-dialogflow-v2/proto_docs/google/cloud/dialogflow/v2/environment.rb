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
        # You can create multiple versions of your agent and publish them to separate
        # environments.
        #
        # When you edit an agent, you are editing the draft agent. At any point, you
        # can save the draft agent as an agent version, which is an immutable snapshot
        # of your agent.
        #
        # When you save the draft agent, it is published to the default environment.
        # When you create agent versions, you can publish them to custom environments.
        # You can create a variety of custom environments for:
        #
        # - testing
        # - development
        # - production
        # - etc.
        #
        # For more information, see the [versions and environments
        # guide](https://cloud.google.com/dialogflow/docs/agents-versions).
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The unique identifier of this agent environment.
        #     Supported formats:
        #
        #     - `projects/<Project ID>/agent/environments/<Environment ID>`
        #     - `projects/<Project ID>/locations/<Location
        #       ID>/agent/environments/<Environment ID>`
        #
        #     The environment ID for the default environment is `-`.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. The developer-provided description for this environment.
        #     The maximum length is 500 characters. If exceeded, the request is rejected.
        # @!attribute [rw] agent_version
        #   @return [::String]
        #     Optional. The agent version loaded into this environment.
        #     Supported formats:
        #
        #     - `projects/<Project ID>/agent/versions/<Version ID>`
        #     - `projects/<Project ID>/locations/<Location ID>/agent/versions/<Version
        #       ID>`
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dialogflow::V2::Environment::State]
        #     Output only. The state of this environment. This field is read-only, i.e.,
        #     it cannot be set by create and update methods.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last update time of this environment. This field is
        #     read-only, i.e., it cannot be set by create and update methods.
        # @!attribute [rw] text_to_speech_settings
        #   @return [::Google::Cloud::Dialogflow::V2::TextToSpeechSettings]
        #     Optional. Text to speech settings for this environment.
        # @!attribute [rw] fulfillment
        #   @return [::Google::Cloud::Dialogflow::V2::Fulfillment]
        #     Optional. The fulfillment settings to use for this environment.
        class Environment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents an environment state. When an environment is pointed to a new
          # agent version, the environment is temporarily set to the `LOADING` state.
          # During that time, the environment keeps on serving the previous version of
          # the agent. After the new agent version is done loading, the environment is
          # set back to the `RUNNING` state.
          module State
            # Not specified. This value is not used.
            STATE_UNSPECIFIED = 0

            # Stopped.
            STOPPED = 1

            # Loading.
            LOADING = 2

            # Running.
            RUNNING = 3
          end
        end

        # Instructs the speech synthesizer on how to generate the output audio content.
        # @!attribute [rw] enable_text_to_speech
        #   @return [::Boolean]
        #     Optional. Indicates whether text to speech is enabled. Even when this field
        #     is false, other settings in this proto are still retained.
        # @!attribute [rw] output_audio_encoding
        #   @return [::Google::Cloud::Dialogflow::V2::OutputAudioEncoding]
        #     Required. Audio encoding of the synthesized audio content.
        # @!attribute [rw] sample_rate_hertz
        #   @return [::Integer]
        #     Optional. The synthesis sample rate (in hertz) for this audio. If not
        #     provided, then the synthesizer will use the default sample rate based on
        #     the audio encoding. If this is different from the voice's natural sample
        #     rate, then the synthesizer will honor this request by converting to the
        #     desired sample rate (which might result in worse audio quality).
        # @!attribute [rw] synthesize_speech_configs
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Dialogflow::V2::SynthesizeSpeechConfig}]
        #     Optional. Configuration of how speech should be synthesized, mapping from
        #     language (https://cloud.google.com/dialogflow/docs/reference/language) to
        #     SynthesizeSpeechConfig.
        class TextToSpeechSettings
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Dialogflow::V2::SynthesizeSpeechConfig]
          class SynthesizeSpeechConfigsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Environments::Client#list_environments Environments.ListEnvironments}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The agent to list all environments from.
        #     Format:
        #
        #     - `projects/<Project ID>/agent`
        #     - `projects/<Project ID>/locations/<Location ID>/agent`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return in a single page. By
        #     default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListEnvironmentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::Environments::Client#list_environments Environments.ListEnvironments}.
        # @!attribute [rw] environments
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::Environment>]
        #     The list of agent environments. There will be a maximum number of items
        #     returned based on the page_size field in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     more results in the list.
        class ListEnvironmentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Environments::Client#get_environment Environments.GetEnvironment}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the environment.
        #     Supported formats:
        #
        #     - `projects/<Project ID>/agent/environments/<Environment ID>`
        #     - `projects/<Project ID>/locations/<Location
        #       ID>/agent/environments/<Environment ID>`
        #
        #     The environment ID for the default environment is `-`.
        class GetEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Environments::Client#create_environment Environments.CreateEnvironment}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The agent to create an environment for.
        #     Supported formats:
        #
        #     - `projects/<Project ID>/agent`
        #     - `projects/<Project ID>/locations/<Location ID>/agent`
        # @!attribute [rw] environment
        #   @return [::Google::Cloud::Dialogflow::V2::Environment]
        #     Required. The environment to create.
        # @!attribute [rw] environment_id
        #   @return [::String]
        #     Required. The unique id of the new environment.
        class CreateEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Environments::Client#update_environment Environments.UpdateEnvironment}.
        # @!attribute [rw] environment
        #   @return [::Google::Cloud::Dialogflow::V2::Environment]
        #     Required. The environment to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The mask to control which fields get updated.
        # @!attribute [rw] allow_load_to_draft_and_discard_changes
        #   @return [::Boolean]
        #     Optional. This field is used to prevent accidental overwrite of the default
        #     environment, which is an operation that cannot be undone. To confirm that
        #     the caller desires this overwrite, this field must be explicitly set to
        #     true when updating the default environment (environment ID = `-`).
        class UpdateEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Environments::Client#delete_environment Environments.DeleteEnvironment}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the environment to delete.
        #     / Format:
        #
        #     - `projects/<Project ID>/agent/environments/<Environment ID>`
        #     - `projects/<Project ID>/locations/<Location
        #       ID>/agent/environments/<Environment ID>`
        #
        #     The environment ID for the default environment is `-`.
        class DeleteEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::Environments::Client#get_environment_history Environments.GetEnvironmentHistory}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the environment to retrieve history for.
        #     Supported formats:
        #
        #     - `projects/<Project ID>/agent/environments/<Environment ID>`
        #     - `projects/<Project ID>/locations/<Location
        #       ID>/agent/environments/<Environment ID>`
        #
        #     The environment ID for the default environment is `-`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return in a single page. By
        #     default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        class GetEnvironmentHistoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::Environments::Client#get_environment_history Environments.GetEnvironmentHistory}.
        # @!attribute [r] parent
        #   @return [::String]
        #     Output only. The name of the environment this history is for.
        #     Supported formats:
        #
        #     - `projects/<Project ID>/agent/environments/<Environment ID>`
        #     - `projects/<Project ID>/locations/<Location
        #        ID>/agent/environments/<Environment ID>`
        #
        #     The environment ID for the default environment is `-`.
        # @!attribute [r] entries
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::EnvironmentHistory::Entry>]
        #     Output only. The list of agent environments. There will be a maximum number
        #     of items returned based on the page_size field in the request.
        # @!attribute [r] next_page_token
        #   @return [::String]
        #     Output only. Token to retrieve the next page of results, or empty if there
        #     are no more results in the list.
        class EnvironmentHistory
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents an environment history entry.
          # @!attribute [rw] agent_version
          #   @return [::String]
          #     The agent version loaded into this environment history entry.
          # @!attribute [rw] description
          #   @return [::String]
          #     The developer-provided description for this environment history entry.
          # @!attribute [rw] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The creation time of this environment history entry.
          class Entry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
