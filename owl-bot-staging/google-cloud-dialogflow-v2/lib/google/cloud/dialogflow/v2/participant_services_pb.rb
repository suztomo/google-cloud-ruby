# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/participant.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/v2/participant_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module Participants
          # Service for managing [Participants][google.cloud.dialogflow.v2.Participant].
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.Participants'

            # Creates a new participant in a conversation.
            rpc :CreateParticipant, ::Google::Cloud::Dialogflow::V2::CreateParticipantRequest, ::Google::Cloud::Dialogflow::V2::Participant
            # Retrieves a conversation participant.
            rpc :GetParticipant, ::Google::Cloud::Dialogflow::V2::GetParticipantRequest, ::Google::Cloud::Dialogflow::V2::Participant
            # Returns the list of all participants in the specified conversation.
            rpc :ListParticipants, ::Google::Cloud::Dialogflow::V2::ListParticipantsRequest, ::Google::Cloud::Dialogflow::V2::ListParticipantsResponse
            # Updates the specified participant.
            rpc :UpdateParticipant, ::Google::Cloud::Dialogflow::V2::UpdateParticipantRequest, ::Google::Cloud::Dialogflow::V2::Participant
            # Adds a text (chat, for example), or audio (phone recording, for example)
            # message from a participant into the conversation.
            #
            # Note: Always use agent versions for production traffic
            # sent to virtual agents. See [Versions and
            # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
            rpc :AnalyzeContent, ::Google::Cloud::Dialogflow::V2::AnalyzeContentRequest, ::Google::Cloud::Dialogflow::V2::AnalyzeContentResponse
            # Adds a text (chat, for example), or audio (phone recording, for example)
            # message from a participant into the conversation.
            # Note: This method is only available through the gRPC API (not REST).
            #
            # The top-level message sent to the client by the server is
            # `StreamingAnalyzeContentResponse`. Multiple response messages can be
            # returned in order. The first one or more messages contain the
            # `recognition_result` field. Each result represents a more complete
            # transcript of what the user said. The next message contains the
            # `reply_text` field and potentially the `reply_audio` field. The message can
            # also contain the `automated_agent_reply` field.
            #
            # Note: Always use agent versions for production traffic
            # sent to virtual agents. See [Versions and
            # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
            rpc :StreamingAnalyzeContent, stream(::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentRequest), stream(::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentResponse)
            # Gets suggested articles for a participant based on specific historical
            # messages.
            rpc :SuggestArticles, ::Google::Cloud::Dialogflow::V2::SuggestArticlesRequest, ::Google::Cloud::Dialogflow::V2::SuggestArticlesResponse
            # Gets suggested faq answers for a participant based on specific historical
            # messages.
            rpc :SuggestFaqAnswers, ::Google::Cloud::Dialogflow::V2::SuggestFaqAnswersRequest, ::Google::Cloud::Dialogflow::V2::SuggestFaqAnswersResponse
            # Gets smart replies for a participant based on specific historical
            # messages.
            rpc :SuggestSmartReplies, ::Google::Cloud::Dialogflow::V2::SuggestSmartRepliesRequest, ::Google::Cloud::Dialogflow::V2::SuggestSmartRepliesResponse
            # Gets knowledge assist suggestions based on historical messages.
            rpc :SuggestKnowledgeAssist, ::Google::Cloud::Dialogflow::V2::SuggestKnowledgeAssistRequest, ::Google::Cloud::Dialogflow::V2::SuggestKnowledgeAssistResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
