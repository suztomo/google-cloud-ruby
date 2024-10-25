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
        # Describes string annotation from both semantic and formatting perspectives.
        # Example:
        #
        # User Query:
        #
        #   top countries by population in Africa
        #
        #   0   4         14 17         28 31    37
        #
        # Table Data:
        #
        # + "country" - dimension
        # + "population" - metric
        # + "Africa" - value in the "continent" column
        #
        # text_formatted = `"top countries by population in Africa"`
        #
        # html_formatted =
        #   `"top <b>countries</b> by <b>population</b> in <i>Africa</i>"`
        #
        # ```
        # markups = [
        #   \\{DIMENSION, 4, 12}, // 'countries'
        #   \\{METRIC, 17, 26}, // 'population'
        #   \\{FILTER, 31, 36}  // 'Africa'
        # ]
        # ```
        #
        # Note that html formattings for 'DIMENSION' and 'METRIC' are the same, while
        # semantic markups are different.
        # @!attribute [rw] text_formatted
        #   @return [::String]
        #     Text version of the string.
        # @!attribute [rw] html_formatted
        #   @return [::String]
        #     HTML version of the string annotation.
        # @!attribute [rw] markups
        #   @return [::Array<::Google::Cloud::DataQnA::V1alpha::AnnotatedString::SemanticMarkup>]
        #     Semantic version of the string annotation.
        class AnnotatedString
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Semantic markup denotes a substring (by index and length) with markup
          # information.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::DataQnA::V1alpha::AnnotatedString::SemanticMarkupType]
          #     The semantic type of the markup substring.
          # @!attribute [rw] start_char_index
          #   @return [::Integer]
          #     Unicode character index of the query.
          # @!attribute [rw] length
          #   @return [::Integer]
          #     The length (number of unicode characters) of the markup substring.
          class SemanticMarkup
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Semantic markup types.
          module SemanticMarkupType
            # No markup type was specified.
            MARKUP_TYPE_UNSPECIFIED = 0

            # Markup for a substring denoting a metric.
            METRIC = 1

            # Markup for a substring denoting a dimension.
            DIMENSION = 2

            # Markup for a substring denoting a filter.
            FILTER = 3

            # Markup for an unused substring.
            UNUSED = 4

            # Markup for a substring containing blocked phrases.
            BLOCKED = 5

            # Markup for a substring that contains terms for row.
            ROW = 6
          end
        end
      end
    end
  end
end
