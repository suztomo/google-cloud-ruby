# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/conversation_model.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/dialogflow/v2/conversation_model_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module ConversationModels
          # Manages a collection of models for human agent assistant.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.ConversationModels'

            # Creates a model.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [CreateConversationModelOperationMetadata][google.cloud.dialogflow.v2.CreateConversationModelOperationMetadata]
            # - `response`: [ConversationModel][google.cloud.dialogflow.v2.ConversationModel]
            rpc :CreateConversationModel, ::Google::Cloud::Dialogflow::V2::CreateConversationModelRequest, ::Google::Longrunning::Operation
            # Gets conversation model.
            rpc :GetConversationModel, ::Google::Cloud::Dialogflow::V2::GetConversationModelRequest, ::Google::Cloud::Dialogflow::V2::ConversationModel
            # Lists conversation models.
            rpc :ListConversationModels, ::Google::Cloud::Dialogflow::V2::ListConversationModelsRequest, ::Google::Cloud::Dialogflow::V2::ListConversationModelsResponse
            # Deletes a model.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [DeleteConversationModelOperationMetadata][google.cloud.dialogflow.v2.DeleteConversationModelOperationMetadata]
            # - `response`: An [Empty
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
            rpc :DeleteConversationModel, ::Google::Cloud::Dialogflow::V2::DeleteConversationModelRequest, ::Google::Longrunning::Operation
            # Deploys a model. If a model is already deployed, deploying it
            # has no effect. A model can only serve prediction requests after it gets
            # deployed. For article suggestion, custom model will not be used unless
            # it is deployed.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [DeployConversationModelOperationMetadata][google.cloud.dialogflow.v2.DeployConversationModelOperationMetadata]
            # - `response`: An [Empty
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
            rpc :DeployConversationModel, ::Google::Cloud::Dialogflow::V2::DeployConversationModelRequest, ::Google::Longrunning::Operation
            # Undeploys a model. If the model is not deployed this method has no effect.
            # If the model is currently being used:
            #   - For article suggestion, article suggestion will fallback to the default
            #     model if model is undeployed.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [UndeployConversationModelOperationMetadata][google.cloud.dialogflow.v2.UndeployConversationModelOperationMetadata]
            # - `response`: An [Empty
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
            rpc :UndeployConversationModel, ::Google::Cloud::Dialogflow::V2::UndeployConversationModelRequest, ::Google::Longrunning::Operation
            # Gets an evaluation of conversation model.
            rpc :GetConversationModelEvaluation, ::Google::Cloud::Dialogflow::V2::GetConversationModelEvaluationRequest, ::Google::Cloud::Dialogflow::V2::ConversationModelEvaluation
            # Lists evaluations of a conversation model.
            rpc :ListConversationModelEvaluations, ::Google::Cloud::Dialogflow::V2::ListConversationModelEvaluationsRequest, ::Google::Cloud::Dialogflow::V2::ListConversationModelEvaluationsResponse
            # Creates evaluation of a conversation model.
            rpc :CreateConversationModelEvaluation, ::Google::Cloud::Dialogflow::V2::CreateConversationModelEvaluationRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
