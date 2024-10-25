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
    module DataLabeling
      module V1beta1
        # Configuration for how human labeling task should be done.
        # @!attribute [rw] instruction
        #   @return [::String]
        #     Required. Instruction resource name.
        # @!attribute [rw] annotated_dataset_display_name
        #   @return [::String]
        #     Required. A human-readable name for AnnotatedDataset defined by
        #     users. Maximum of 64 characters
        #     .
        # @!attribute [rw] annotated_dataset_description
        #   @return [::String]
        #     Optional. A human-readable description for AnnotatedDataset.
        #     The description can be up to 10000 characters long.
        # @!attribute [rw] label_group
        #   @return [::String]
        #     Optional. A human-readable label used to logically group labeling tasks.
        #     This string must match the regular expression `[a-zA-Z\\d_-]{0,128}`.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The Language of this question, as a
        #     [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
        #     Default value is en-US.
        #     Only need to set this when task is language related. For example, French
        #     text classification.
        # @!attribute [rw] replica_count
        #   @return [::Integer]
        #     Optional. Replication of questions. Each question will be sent to up to
        #     this number of contributors to label. Aggregated answers will be returned.
        #     Default is set to 1.
        #     For image related labeling, valid values are 1, 3, 5.
        # @!attribute [rw] question_duration
        #   @return [::Google::Protobuf::Duration]
        #     Optional. Maximum duration for contributors to answer a question. Maximum
        #     is 3600 seconds. Default is 3600 seconds.
        # @!attribute [rw] contributor_emails
        #   @return [::Array<::String>]
        #     Optional. If you want your own labeling contributors to manage and work on
        #     this labeling request, you can set these contributors here. We will give
        #     them access to the question types in crowdcompute. Note that these
        #     emails must be registered in crowdcompute worker UI:
        #     https://crowd-compute.appspot.com/
        # @!attribute [rw] user_email_address
        #   @return [::String]
        #     Email of the user who started the labeling task and should be notified by
        #     email. If empty no notification will be sent.
        class HumanAnnotationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for image classification human labeling task.
        # @!attribute [rw] annotation_spec_set
        #   @return [::String]
        #     Required. Annotation spec set resource name.
        # @!attribute [rw] allow_multi_label
        #   @return [::Boolean]
        #     Optional. If allow_multi_label is true, contributors are able to choose
        #     multiple labels for one image.
        # @!attribute [rw] answer_aggregation_type
        #   @return [::Google::Cloud::DataLabeling::V1beta1::StringAggregationType]
        #     Optional. The type of how to aggregate answers.
        class ImageClassificationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for image bounding poly (and bounding box) human labeling task.
        # @!attribute [rw] annotation_spec_set
        #   @return [::String]
        #     Required. Annotation spec set resource name.
        # @!attribute [rw] instruction_message
        #   @return [::String]
        #     Optional. Instruction message showed on contributors UI.
        class BoundingPolyConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for image polyline human labeling task.
        # @!attribute [rw] annotation_spec_set
        #   @return [::String]
        #     Required. Annotation spec set resource name.
        # @!attribute [rw] instruction_message
        #   @return [::String]
        #     Optional. Instruction message showed on contributors UI.
        class PolylineConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for image segmentation
        # @!attribute [rw] annotation_spec_set
        #   @return [::String]
        #     Required. Annotation spec set resource name. format:
        #     projects/\\{project_id}/annotationSpecSets/\\{annotation_spec_set_id}
        # @!attribute [rw] instruction_message
        #   @return [::String]
        #     Instruction message showed on labelers UI.
        class SegmentationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for video classification human labeling task.
        # Currently two types of video classification are supported:
        # 1. Assign labels on the entire video.
        # 2. Split the video into multiple video clips based on camera shot, and
        # assign labels on each video clip.
        # @!attribute [rw] annotation_spec_set_configs
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::VideoClassificationConfig::AnnotationSpecSetConfig>]
        #     Required. The list of annotation spec set configs.
        #     Since watching a video clip takes much longer time than an image, we
        #     support label with multiple AnnotationSpecSet at the same time. Labels
        #     in each AnnotationSpecSet will be shown in a group to contributors.
        #     Contributors can select one or more (depending on whether to allow multi
        #     label) from each group.
        # @!attribute [rw] apply_shot_detection
        #   @return [::Boolean]
        #     Optional. Option to apply shot detection on the video.
        class VideoClassificationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Annotation spec set with the setting of allowing multi labels or not.
          # @!attribute [rw] annotation_spec_set
          #   @return [::String]
          #     Required. Annotation spec set resource name.
          # @!attribute [rw] allow_multi_label
          #   @return [::Boolean]
          #     Optional. If allow_multi_label is true, contributors are able to
          #     choose multiple labels from one annotation spec set.
          class AnnotationSpecSetConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Config for video object detection human labeling task.
        # Object detection will be conducted on the images extracted from the video,
        # and those objects will be labeled with bounding boxes.
        # User need to specify the number of images to be extracted per second as the
        # extraction frame rate.
        # @!attribute [rw] annotation_spec_set
        #   @return [::String]
        #     Required. Annotation spec set resource name.
        # @!attribute [rw] extraction_frame_rate
        #   @return [::Float]
        #     Required. Number of frames per second to be extracted from the video.
        class ObjectDetectionConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for video object tracking human labeling task.
        # @!attribute [rw] annotation_spec_set
        #   @return [::String]
        #     Required. Annotation spec set resource name.
        class ObjectTrackingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for video event human labeling task.
        # @!attribute [rw] annotation_spec_sets
        #   @return [::Array<::String>]
        #     Required. The list of annotation spec set resource name. Similar to video
        #     classification, we support selecting event from multiple AnnotationSpecSet
        #     at the same time.
        class EventConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for text classification human labeling task.
        # @!attribute [rw] allow_multi_label
        #   @return [::Boolean]
        #     Optional. If allow_multi_label is true, contributors are able to choose
        #     multiple labels for one text segment.
        # @!attribute [rw] annotation_spec_set
        #   @return [::String]
        #     Required. Annotation spec set resource name.
        # @!attribute [rw] sentiment_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::SentimentConfig]
        #     Optional. Configs for sentiment selection.
        class TextClassificationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for setting up sentiments.
        # @!attribute [rw] enable_label_sentiment_selection
        #   @return [::Boolean]
        #     If set to true, contributors will have the option to select sentiment of
        #     the label they selected, to mark it as negative or positive label. Default
        #     is false.
        class SentimentConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for text entity extraction human labeling task.
        # @!attribute [rw] annotation_spec_set
        #   @return [::String]
        #     Required. Annotation spec set resource name.
        class TextEntityExtractionConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        module StringAggregationType
          STRING_AGGREGATION_TYPE_UNSPECIFIED = 0

          # Majority vote to aggregate answers.
          MAJORITY_VOTE = 1

          # Unanimous answers will be adopted.
          UNANIMOUS_VOTE = 2

          # Preserve all answers by crowd compute.
          NO_AGGREGATION = 3
        end
      end
    end
  end
end
