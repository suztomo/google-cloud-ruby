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
    module TextToSpeech
      module V1
        # The top-level message sent by the client for the
        # `SynthesizeLongAudio` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The resource states of the request in the form of
        #     `projects/*/locations/*`.
        # @!attribute [rw] input
        #   @return [::Google::Cloud::TextToSpeech::V1::SynthesisInput]
        #     Required. The Synthesizer requires either plain text or SSML as input.
        #     While Long Audio is in preview, SSML is temporarily unsupported.
        # @!attribute [rw] audio_config
        #   @return [::Google::Cloud::TextToSpeech::V1::AudioConfig]
        #     Required. The configuration of the synthesized audio.
        # @!attribute [rw] output_gcs_uri
        #   @return [::String]
        #     Required. Specifies a Cloud Storage URI for the synthesis results. Must be
        #     specified in the format: `gs://bucket_name/object_name`, and the bucket
        #     must already exist.
        # @!attribute [rw] voice
        #   @return [::Google::Cloud::TextToSpeech::V1::VoiceSelectionParams]
        #     Required. The desired voice of the synthesized audio.
        class SynthesizeLongAudioRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The message returned to the client by the `SynthesizeLongAudio` method.
        class SynthesizeLongAudioResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for response returned by the `SynthesizeLongAudio` method.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time when the request was received.
        # @!attribute [rw] last_update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time of the most recent processing update.
        # @!attribute [rw] progress_percentage
        #   @return [::Float]
        #     The progress of the most recent processing update in percentage, ie. 70.0%.
        class SynthesizeLongAudioMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
