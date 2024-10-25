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
    module DataQnA
      module V1alpha
        # Feedback provided by a user.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The unique identifier for the user feedback.
        #     User feedback is a singleton resource on a Question.
        #     Example: `projects/foo/locations/bar/questions/1234/userFeedback`
        # @!attribute [rw] free_form_feedback
        #   @return [::String]
        #     Free form user feedback, such as a text box.
        # @!attribute [rw] rating
        #   @return [::Google::Cloud::DataQnA::V1alpha::UserFeedback::UserFeedbackRating]
        #     The user feedback rating
        class UserFeedback
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enumeration of feedback ratings.
          module UserFeedbackRating
            # No rating was specified.
            USER_FEEDBACK_RATING_UNSPECIFIED = 0

            # The user provided positive feedback.
            POSITIVE = 1

            # The user provided negative feedback.
            NEGATIVE = 2
          end
        end
      end
    end
  end
end
