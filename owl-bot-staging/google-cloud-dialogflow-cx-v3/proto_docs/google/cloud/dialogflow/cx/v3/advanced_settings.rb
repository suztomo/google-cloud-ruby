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
      module CX
        module V3
          # Hierarchical advanced settings for agent/flow/page/fulfillment/parameter.
          # Settings exposed at lower level overrides the settings exposed at higher
          # level. Overriding occurs at the sub-setting level. For example, the
          # playback_interruption_settings at fulfillment level only overrides the
          # playback_interruption_settings at the agent level, leaving other settings
          # at the agent level unchanged.
          #
          # DTMF settings does not override each other. DTMF settings set at different
          # levels define DTMF detections running in parallel.
          #
          # Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
          # @!attribute [rw] audio_export_gcs_destination
          #   @return [::Google::Cloud::Dialogflow::CX::V3::GcsDestination]
          #     If present, incoming audio is exported by Dialogflow to the configured
          #     Google Cloud Storage destination.
          #     Exposed at the following levels:
          #     - Agent level
          #     - Flow level
          # @!attribute [rw] speech_settings
          #   @return [::Google::Cloud::Dialogflow::CX::V3::AdvancedSettings::SpeechSettings]
          #     Settings for speech to text detection.
          #     Exposed at the following levels:
          #     - Agent level
          #     - Flow level
          #     - Page level
          #     - Parameter level
          # @!attribute [rw] dtmf_settings
          #   @return [::Google::Cloud::Dialogflow::CX::V3::AdvancedSettings::DtmfSettings]
          #     Settings for DTMF.
          #     Exposed at the following levels:
          #     - Agent level
          #     - Flow level
          #     - Page level
          #     - Parameter level.
          # @!attribute [rw] logging_settings
          #   @return [::Google::Cloud::Dialogflow::CX::V3::AdvancedSettings::LoggingSettings]
          #     Settings for logging.
          #     Settings for Dialogflow History, Contact Center messages, StackDriver logs,
          #     and speech logging.
          #     Exposed at the following levels:
          #     - Agent level.
          class AdvancedSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Define behaviors of speech to text detection.
            # @!attribute [rw] endpointer_sensitivity
            #   @return [::Integer]
            #     Sensitivity of the speech model that detects the end of speech.
            #     Scale from 0 to 100.
            # @!attribute [rw] no_speech_timeout
            #   @return [::Google::Protobuf::Duration]
            #     Timeout before detecting no speech.
            # @!attribute [rw] use_timeout_based_endpointing
            #   @return [::Boolean]
            #     Use timeout based endpointing, interpreting endpointer sensitivy as
            #     seconds of timeout value.
            # @!attribute [rw] models
            #   @return [::Google::Protobuf::Map{::String => ::String}]
            #     Mapping from language to Speech-to-Text model. The mapped Speech-to-Text
            #     model will be selected for requests from its corresponding language.
            #     For more information, see
            #     [Speech
            #     models](https://cloud.google.com/dialogflow/cx/docs/concept/speech-models).
            class SpeechSettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # @!attribute [rw] key
              #   @return [::String]
              # @!attribute [rw] value
              #   @return [::String]
              class ModelsEntry
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Define behaviors for DTMF (dual tone multi frequency).
            # @!attribute [rw] enabled
            #   @return [::Boolean]
            #     If true, incoming audio is processed for DTMF (dual tone multi frequency)
            #     events. For example, if the caller presses a button on their telephone
            #     keypad and DTMF processing is enabled, Dialogflow will detect the
            #     event (e.g. a "3" was pressed) in the incoming audio and pass the event
            #     to the bot to drive business logic (e.g. when 3 is pressed, return the
            #     account balance).
            # @!attribute [rw] max_digits
            #   @return [::Integer]
            #     Max length of DTMF digits.
            # @!attribute [rw] finish_digit
            #   @return [::String]
            #     The digit that terminates a DTMF digit sequence.
            # @!attribute [rw] interdigit_timeout_duration
            #   @return [::Google::Protobuf::Duration]
            #     Interdigit timeout setting for matching dtmf input to regex.
            # @!attribute [rw] endpointing_timeout_duration
            #   @return [::Google::Protobuf::Duration]
            #     Endpoint timeout setting for matching dtmf input to regex.
            class DtmfSettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Define behaviors on logging.
            # @!attribute [rw] enable_stackdriver_logging
            #   @return [::Boolean]
            #     Enables StackDriver logging.
            # @!attribute [rw] enable_interaction_logging
            #   @return [::Boolean]
            #     Enables DF Interaction logging.
            # @!attribute [rw] enable_consent_based_redaction
            #   @return [::Boolean]
            #     Enables consent-based end-user input redaction, if true, a pre-defined
            #     session parameter `$session.params.conversation-redaction` will be
            #     used to determine if the utterance should be redacted.
            class LoggingSettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end
