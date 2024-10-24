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
    module DocumentAI
      module V1beta3
        # A vertex represents a 2D point in the image.
        # NOTE: the vertex coordinates are in the same scale as the original image.
        # @!attribute [rw] x
        #   @return [::Integer]
        #     X coordinate.
        # @!attribute [rw] y
        #   @return [::Integer]
        #     Y coordinate (starts from the top of the image).
        class Vertex
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A vertex represents a 2D point in the image.
        # NOTE: the normalized vertex coordinates are relative to the original image
        # and range from 0 to 1.
        # @!attribute [rw] x
        #   @return [::Float]
        #     X coordinate.
        # @!attribute [rw] y
        #   @return [::Float]
        #     Y coordinate (starts from the top of the image).
        class NormalizedVertex
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A bounding polygon for the detected image annotation.
        # @!attribute [rw] vertices
        #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::Vertex>]
        #     The bounding polygon vertices.
        # @!attribute [rw] normalized_vertices
        #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::NormalizedVertex>]
        #     The bounding polygon normalized vertices.
        class BoundingPoly
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
