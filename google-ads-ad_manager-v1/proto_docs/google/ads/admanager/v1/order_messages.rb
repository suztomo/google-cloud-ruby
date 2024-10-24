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
        # The `Order` resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the `Order`.
        #     Format: `networks/{network_code}/orders/{order_id}`
        # @!attribute [r] order_id
        #   @return [::Integer]
        #     Output only. Order ID.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the Order.  This value has a maximum length
        #     of 255 characters.
        # @!attribute [rw] programmatic
        #   @return [::Boolean]
        #     Optional. Specifies whether or not the Order is a programmatic order.
        # @!attribute [rw] trafficker
        #   @return [::String]
        #     Required. The resource name of the User responsible for trafficking the
        #     Order. Format: "networks/\\{network_code}/users/\\{user_id}"
        # @!attribute [rw] advertiser_contacts
        #   @return [::Array<::String>]
        #     Optional. The resource names of Contacts from the advertiser of this Order.
        #     Format: "networks/\\{network_code}/contacts/\\{contact_id}"
        # @!attribute [rw] advertiser
        #   @return [::String]
        #     Required. The resource name of the Company, which is of type
        #     Company.Type.ADVERTISER, to which this order belongs. Format:
        #     "networks/\\{network_code}/companies/\\{company_id}"
        # @!attribute [rw] agency_contacts
        #   @return [::Array<::String>]
        #     Optional. The resource names of Contacts from the advertising Agency of
        #     this Order. Format: "networks/\\{network_code}/contacts/\\{contact_id}"
        # @!attribute [rw] agency
        #   @return [::String]
        #     Optional. The resource name of the Company, which is of type
        #     Company.Type.AGENCY, with which this order is associated. Format:
        #     "networks/\\{network_code}/companies/\\{company_id}"
        # @!attribute [rw] applied_teams
        #   @return [::Array<::String>]
        #     Optional. The resource names of Teams directly applied to this Order.
        #     Format: "networks/\\{network_code}/teams/\\{team_id}"
        # @!attribute [r] effective_teams
        #   @return [::Array<::String>]
        #     Output only. The resource names of Teams applied to this Order including
        #     inherited values. Format: "networks/\\{network_code}/teams/\\{team_id}"
        # @!attribute [r] creator
        #   @return [::String]
        #     Output only. The resource name of the User who created the Order on behalf
        #     of the advertiser. This value is assigned by Google. Format:
        #     "networks/\\{network_code}/users/\\{user_id}"
        # @!attribute [r] currency_code
        #   @return [::String]
        #     Output only. The ISO 4217 3-letter currency code for the currency used by
        #     the Order. This value is the network's currency code.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The instant at which the Order and its associated line items
        #     are eligible to begin serving. This attribute is derived from the line item
        #     of the order that has the earliest LineItem.start_time.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The instant at which the Order and its associated line items
        #     stop being served. This attribute is derived from the line item of the
        #     order that has the latest LineItem.end_time.
        # @!attribute [r] unlimited_end_time
        #   @return [::Boolean]
        #     Output only. Indicates whether or not this Order has an end time.
        # @!attribute [rw] external_order_id
        #   @return [::Integer]
        #     Optional. An arbitrary ID to associate to the Order, which can be used as a
        #     key to an external system.
        # @!attribute [r] archived
        #   @return [::Boolean]
        #     Output only. The archival status of the Order.
        # @!attribute [r] last_modified_by_app
        #   @return [::String]
        #     Output only. The application which modified this order. This attribute is
        #     assigned by Google.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The instant this Order was last modified.
        # @!attribute [rw] notes
        #   @return [::String]
        #     Optional. Provides any additional notes that may annotate the Order. This
        #     attribute has a maximum length of 65,535 characters.
        # @!attribute [rw] po_number
        #   @return [::String]
        #     Optional. The purchase order number for the Order. This value has a maximum
        #     length of 63 characters.
        # @!attribute [r] status
        #   @return [::Google::Ads::Admanager::V1::OrderStatusEnum::OrderStatus]
        #     Output only. The status of the Order.
        # @!attribute [rw] salesperson
        #   @return [::String]
        #     Optional. The resource name of the User responsible for the sales of the
        #     Order. Format: "networks/\\{network_code}/users/\\{user_id}"
        # @!attribute [rw] secondary_salespeople
        #   @return [::Array<::String>]
        #     Optional. Unordered list. The resource names of the secondary salespeople
        #     associated with the order. Format:
        #     "networks/\\{network_code}/users/\\{user_id}"
        # @!attribute [rw] secondary_traffickers
        #   @return [::Array<::String>]
        #     Optional. Unordered list. The resource names of the secondary traffickers
        #     associated with the order. Format:
        #     "networks/\\{network_code}/users/\\{user_id}"
        # @!attribute [rw] applied_labels
        #   @return [::Array<::Google::Ads::Admanager::V1::AppliedLabel>]
        #     Optional. The set of labels applied directly to this order.
        # @!attribute [r] effective_applied_labels
        #   @return [::Array<::Google::Ads::Admanager::V1::AppliedLabel>]
        #     Output only. Contains the set of labels applied directly to the order as
        #     well as those inherited from the company that owns the order. If a label
        #     has been negated, only the negated label is returned. This field is
        #     assigned by Google.
        # @!attribute [rw] custom_field_values
        #   @return [::Array<::Google::Ads::Admanager::V1::CustomFieldValue>]
        #     Optional. The set of custom field values to this order.
        class Order
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
