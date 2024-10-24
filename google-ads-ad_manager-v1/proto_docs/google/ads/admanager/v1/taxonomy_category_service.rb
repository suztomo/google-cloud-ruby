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
  module Ads
    module Admanager
      module V1
        # Request object for `GetTaxonomyCategory` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the TaxonomyCategory.
        #     Format: `networks/{network_code}/taxonomyCategories/{taxonomy_category_id}`
        class GetTaxonomyCategoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request object for `ListTaxonomyCategories` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent, which owns this collection of TaxonomyCategories.
        #     Format: `networks/{network_code}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of `TaxonomyCategories` to return. The service
        #     may return fewer than this value. If unspecified, at most 50
        #     `TaxonomyCategories` will be returned. The maximum value is 1000; values
        #     above 1000 will be coerced to 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous `ListTaxonomyCategories`
        #     call. Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListTaxonomyCategories`
        #     must match the call that provided the page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Expression to filter the response.
        #     See syntax details at
        #     https://developers.google.com/ad-manager/api/beta/filters
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Expression to specify sorting order.
        #     See syntax details at
        #     https://developers.google.com/ad-manager/api/beta/filters#order
        # @!attribute [rw] skip
        #   @return [::Integer]
        #     Optional. Number of individual resources to skip while paginating.
        class ListTaxonomyCategoriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response object for `ListTaxonomyCategoriesRequest` containing matching
        # `TaxonomyCategory` objects.
        # @!attribute [rw] taxonomy_categories
        #   @return [::Array<::Google::Ads::Admanager::V1::TaxonomyCategory>]
        #     The `TaxonomyCategory` objects.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        # @!attribute [rw] total_size
        #   @return [::Integer]
        #     Total number of `TaxonomyCategory` objects.
        #     If a filter was included in the request, this reflects the total number
        #     after the filtering is applied.
        #
        #     `total_size` will not be calculated in the response unless it has been
        #     included in a response field mask. The response field mask can be provided
        #     to the method by using the URL parameter `$fields` or `fields`, or by using
        #     the HTTP/gRPC header `X-Goog-FieldMask`.
        #
        #     For more information, see
        #     https://developers.google.com/ad-manager/api/beta/field-masks
        class ListTaxonomyCategoriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
