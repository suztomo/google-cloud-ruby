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
    module AIPlatform
      module V1
        # A Model Garden Publisher Model.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the PublisherModel.
        # @!attribute [r] version_id
        #   @return [::String]
        #     Output only. Immutable. The version ID of the PublisherModel.
        #     A new version is committed when a new model version is uploaded under an
        #     existing model id. It is an auto-incrementing decimal number in string
        #     representation.
        # @!attribute [rw] open_source_category
        #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::OpenSourceCategory]
        #     Required. Indicates the open source category of the publisher model.
        # @!attribute [rw] supported_actions
        #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction]
        #     Optional. Supported call-to-action options.
        # @!attribute [rw] frameworks
        #   @return [::Array<::String>]
        #     Optional. Additional information about the model's Frameworks.
        # @!attribute [rw] launch_stage
        #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::LaunchStage]
        #     Optional. Indicates the launch stage of the model.
        # @!attribute [rw] version_state
        #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::VersionState]
        #     Optional. Indicates the state of the model version.
        # @!attribute [r] publisher_model_template
        #   @return [::String]
        #     Optional. Output only. Immutable. Used to indicate this model has a
        #     publisher model and provide the template of the publisher model resource
        #     name.
        # @!attribute [rw] predict_schemata
        #   @return [::Google::Cloud::AIPlatform::V1::PredictSchemata]
        #     Optional. The schemata that describes formats of the PublisherModel's
        #     predictions and explanations as given and returned via
        #     {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict}.
        class PublisherModel
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Reference to a resource.
          # @!attribute [rw] uri
          #   @return [::String]
          #     The URI of the resource.
          # @!attribute [rw] resource_name
          #   @return [::String]
          #     The resource name of the Google Cloud resource.
          # @!attribute [rw] use_case
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::String]
          #     Use case (CUJ) of the resource.
          # @!attribute [rw] description
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::String]
          #     Description of the resource.
          class ResourceReference
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A named piece of documentation.
          # @!attribute [rw] title
          #   @return [::String]
          #     Required. E.g., OVERVIEW, USE CASES, DOCUMENTATION, SDK & SAMPLES, JAVA,
          #     NODE.JS, etc..
          # @!attribute [rw] content
          #   @return [::String]
          #     Required. Content of this piece of document (in Markdown format).
          class Documentation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Actions could take on this Publisher Model.
          # @!attribute [rw] view_rest_api
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::ViewRestApi]
          #     Optional. To view Rest API docs.
          # @!attribute [rw] open_notebook
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences]
          #     Optional. Open notebook of the PublisherModel.
          # @!attribute [rw] open_notebooks
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::OpenNotebooks]
          #     Optional. Open notebooks of the PublisherModel.
          # @!attribute [rw] create_application
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences]
          #     Optional. Create application using the PublisherModel.
          # @!attribute [rw] open_fine_tuning_pipeline
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences]
          #     Optional. Open fine-tuning pipeline of the PublisherModel.
          # @!attribute [rw] open_fine_tuning_pipelines
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::OpenFineTuningPipelines]
          #     Optional. Open fine-tuning pipelines of the PublisherModel.
          # @!attribute [rw] open_prompt_tuning_pipeline
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences]
          #     Optional. Open prompt-tuning pipeline of the PublisherModel.
          # @!attribute [rw] open_genie
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences]
          #     Optional. Open Genie / Playground.
          # @!attribute [rw] deploy
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::Deploy]
          #     Optional. Deploy the PublisherModel to Vertex Endpoint.
          # @!attribute [rw] deploy_gke
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::DeployGke]
          #     Optional. Deploy PublisherModel to Google Kubernetes Engine.
          # @!attribute [rw] open_generation_ai_studio
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences]
          #     Optional. Open in Generation AI Studio.
          # @!attribute [rw] request_access
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences]
          #     Optional. Request for access.
          # @!attribute [rw] open_evaluation_pipeline
          #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences]
          #     Optional. Open evaluation pipeline of the PublisherModel.
          class CallToAction
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The regional resource name or the URI. Key is region, e.g.,
            # us-central1, europe-west2, global, etc..
            # @!attribute [rw] references
            #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::AIPlatform::V1::PublisherModel::ResourceReference}]
            #     Required.
            # @!attribute [rw] title
            #   @return [::String]
            #     Required.
            # @!attribute [rw] resource_title
            #   @return [::String]
            #     Optional. Title of the resource.
            # @!attribute [rw] resource_use_case
            #   @return [::String]
            #     Optional. Use case (CUJ) of the resource.
            # @!attribute [rw] resource_description
            #   @return [::String]
            #     Optional. Description of the resource.
            class RegionalResourceReferences
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # @!attribute [rw] key
              #   @return [::String]
              # @!attribute [rw] value
              #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::ResourceReference]
              class ReferencesEntry
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Rest API docs.
            # @!attribute [rw] documentations
            #   @return [::Array<::Google::Cloud::AIPlatform::V1::PublisherModel::Documentation>]
            #     Required.
            # @!attribute [rw] title
            #   @return [::String]
            #     Required. The title of the view rest API.
            class ViewRestApi
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Open notebooks.
            # @!attribute [rw] notebooks
            #   @return [::Array<::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences>]
            #     Required. Regional resource references to notebooks.
            class OpenNotebooks
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Open fine tuning pipelines.
            # @!attribute [rw] fine_tuning_pipelines
            #   @return [::Array<::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::RegionalResourceReferences>]
            #     Required. Regional resource references to fine tuning pipelines.
            class OpenFineTuningPipelines
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Model metadata that is needed for UploadModel or
            # DeployModel/CreateEndpoint requests.
            # @!attribute [rw] dedicated_resources
            #   @return [::Google::Cloud::AIPlatform::V1::DedicatedResources]
            #     A description of resources that are dedicated to the DeployedModel,
            #     and that need a higher degree of manual configuration.
            # @!attribute [rw] automatic_resources
            #   @return [::Google::Cloud::AIPlatform::V1::AutomaticResources]
            #     A description of resources that to large degree are decided by Vertex
            #     AI, and require only a modest additional configuration.
            # @!attribute [rw] shared_resources
            #   @return [::String]
            #     The resource name of the shared DeploymentResourcePool to deploy on.
            #     Format:
            #     `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
            # @!attribute [rw] model_display_name
            #   @return [::String]
            #     Optional. Default model display name.
            # @!attribute [rw] large_model_reference
            #   @return [::Google::Cloud::AIPlatform::V1::LargeModelReference]
            #     Optional. Large model reference. When this is set, model_artifact_spec
            #     is not needed.
            # @!attribute [rw] container_spec
            #   @return [::Google::Cloud::AIPlatform::V1::ModelContainerSpec]
            #     Optional. The specification of the container that is to be used when
            #     deploying this Model in Vertex AI. Not present for Large Models.
            # @!attribute [rw] artifact_uri
            #   @return [::String]
            #     Optional. The path to the directory containing the Model artifact and
            #     any of its supporting files.
            # @!attribute [rw] deploy_task_name
            #   @return [::String]
            #     Optional. The name of the deploy task (e.g., "text to image
            #     generation").
            # @!attribute [rw] deploy_metadata
            #   @return [::Google::Cloud::AIPlatform::V1::PublisherModel::CallToAction::Deploy::DeployMetadata]
            #     Optional. Metadata information about this deployment config.
            # @!attribute [rw] title
            #   @return [::String]
            #     Required. The title of the regional resource reference.
            # @!attribute [rw] public_artifact_uri
            #   @return [::String]
            #     Optional. The signed URI for ephemeral Cloud Storage access to model
            #     artifact.
            class Deploy
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Metadata information about the deployment for managing deployment
              # config.
              # @!attribute [rw] labels
              #   @return [::Google::Protobuf::Map{::String => ::String}]
              #     Optional. Labels for the deployment. For managing deployment config
              #     like verifying, source of deployment config, etc.
              # @!attribute [rw] sample_request
              #   @return [::String]
              #     Optional. Sample request for deployed endpoint.
              class DeployMetadata
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods

                # @!attribute [rw] key
                #   @return [::String]
                # @!attribute [rw] value
                #   @return [::String]
                class LabelsEntry
                  include ::Google::Protobuf::MessageExts
                  extend ::Google::Protobuf::MessageExts::ClassMethods
                end
              end
            end

            # Configurations for PublisherModel GKE deployment
            # @!attribute [rw] gke_yaml_configs
            #   @return [::Array<::String>]
            #     Optional. GKE deployment configuration in yaml format.
            class DeployGke
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # An enum representing the open source category of a PublisherModel.
          module OpenSourceCategory
            # The open source category is unspecified, which should not be used.
            OPEN_SOURCE_CATEGORY_UNSPECIFIED = 0

            # Used to indicate the PublisherModel is not open sourced.
            PROPRIETARY = 1

            # Used to indicate the PublisherModel is a Google-owned open source model
            # w/ Google checkpoint.
            GOOGLE_OWNED_OSS_WITH_GOOGLE_CHECKPOINT = 2

            # Used to indicate the PublisherModel is a 3p-owned open source model w/
            # Google checkpoint.
            THIRD_PARTY_OWNED_OSS_WITH_GOOGLE_CHECKPOINT = 3

            # Used to indicate the PublisherModel is a Google-owned pure open source
            # model.
            GOOGLE_OWNED_OSS = 4

            # Used to indicate the PublisherModel is a 3p-owned pure open source model.
            THIRD_PARTY_OWNED_OSS = 5
          end

          # An enum representing the launch stage of a PublisherModel.
          module LaunchStage
            # The model launch stage is unspecified.
            LAUNCH_STAGE_UNSPECIFIED = 0

            # Used to indicate the PublisherModel is at Experimental launch stage,
            # available to a small set of customers.
            EXPERIMENTAL = 1

            # Used to indicate the PublisherModel is at Private Preview launch stage,
            # only available to a small set of customers, although a larger set of
            # customers than an Experimental launch. Previews are the first launch
            # stage used to get feedback from customers.
            PRIVATE_PREVIEW = 2

            # Used to indicate the PublisherModel is at Public Preview launch stage,
            # available to all customers, although not supported for production
            # workloads.
            PUBLIC_PREVIEW = 3

            # Used to indicate the PublisherModel is at GA launch stage, available to
            # all customers and ready for production workload.
            GA = 4
          end

          # An enum representing the state of the PublicModelVersion.
          module VersionState
            # The version state is unspecified.
            VERSION_STATE_UNSPECIFIED = 0

            # Used to indicate the version is stable.
            VERSION_STATE_STABLE = 1

            # Used to indicate the version is unstable.
            VERSION_STATE_UNSTABLE = 2
          end
        end
      end
    end
  end
end
