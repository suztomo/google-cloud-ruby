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
  module Maps
    module FleetEngine
      module Delivery
        module V1
          # Describes a vehicle attribute as a key-value pair. The "key:value" string
          # length cannot exceed 256 characters.
          # @!attribute [rw] key
          #   @return [::String]
          #     The attribute's key.
          # @!attribute [rw] value
          #   @return [::String]
          #     The attribute's value.
          # @!attribute [rw] string_value
          #   @return [::String]
          #     String typed attribute value.
          #
          #     Note: This is identical to the `value` field which will eventually be
          #     deprecated. For create or update methods, either field can be used, but
          #     it's strongly recommended to use `string_value`. If both `string_value`
          #     and `value` are set, they must be identical or an error will be thrown.
          #     Both fields are populated in responses.
          # @!attribute [rw] bool_value
          #   @return [::Boolean]
          #     Boolean typed attribute value.
          # @!attribute [rw] number_value
          #   @return [::Float]
          #     Double typed attribute value.
          class DeliveryVehicleAttribute
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The location, speed, and heading of a vehicle at a point in time.
          # @!attribute [rw] location
          #   @return [::Google::Type::LatLng]
          #     The location of the vehicle.
          #     When it is sent to Fleet Engine, the vehicle's location is a GPS location.
          #     When you receive it in a response, the vehicle's location can be either a
          #     GPS location, a supplemental location, or some other estimated location.
          #     The source is specified in `location_sensor`.
          # @!attribute [rw] horizontal_accuracy
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::Google::Protobuf::DoubleValue]
          #     Deprecated: Use `latlng_accuracy` instead.
          # @!attribute [rw] latlng_accuracy
          #   @return [::Google::Protobuf::DoubleValue]
          #     Accuracy of `location` in meters as a radius.
          # @!attribute [rw] heading
          #   @return [::Google::Protobuf::Int32Value]
          #     Direction the vehicle is moving in degrees.  0 represents North.
          #     The valid range is [0,360).
          # @!attribute [rw] bearing_accuracy
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::Google::Protobuf::DoubleValue]
          #     Deprecated: Use `heading_accuracy` instead.
          # @!attribute [rw] heading_accuracy
          #   @return [::Google::Protobuf::DoubleValue]
          #     Accuracy of `heading` in degrees.
          # @!attribute [rw] altitude
          #   @return [::Google::Protobuf::DoubleValue]
          #     Altitude in meters above WGS84.
          # @!attribute [rw] vertical_accuracy
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::Google::Protobuf::DoubleValue]
          #     Deprecated: Use `altitude_accuracy` instead.
          # @!attribute [rw] altitude_accuracy
          #   @return [::Google::Protobuf::DoubleValue]
          #     Accuracy of `altitude` in meters.
          # @!attribute [rw] speed_kmph
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::Google::Protobuf::Int32Value]
          #     Speed of the vehicle in kilometers per hour.
          #     Deprecated: Use `speed` instead.
          # @!attribute [rw] speed
          #   @return [::Google::Protobuf::DoubleValue]
          #     Speed of the vehicle in meters/second
          # @!attribute [rw] speed_accuracy
          #   @return [::Google::Protobuf::DoubleValue]
          #     Accuracy of `speed` in meters/second.
          # @!attribute [rw] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time when `location` was reported by the sensor according to the
          #     sensor's clock.
          # @!attribute [r] server_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The time when the server received the location information.
          # @!attribute [rw] location_sensor
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicleLocationSensor]
          #     Provider of location data (for example, `GPS`).
          # @!attribute [rw] is_road_snapped
          #   @return [::Google::Protobuf::BoolValue]
          #     Whether `location` is snapped to a road.
          # @!attribute [rw] is_gps_sensor_enabled
          #   @return [::Google::Protobuf::BoolValue]
          #     Input only. Indicates whether the GPS sensor is enabled on the mobile
          #     device.
          # @!attribute [rw] time_since_update
          #   @return [::Google::Protobuf::Int32Value]
          #     Input only. Time (in seconds) since this location was first sent to the
          #     server. This will be zero for the first update. If the time is unknown (for
          #     example, when the app restarts), this value resets to zero.
          # @!attribute [rw] num_stale_updates
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::Google::Protobuf::Int32Value]
          #     Input only. Deprecated: Other signals are now used to determine if a
          #     location is stale.
          # @!attribute [rw] raw_location
          #   @return [::Google::Type::LatLng]
          #     Raw vehicle location (unprocessed by road-snapper).
          # @!attribute [rw] raw_location_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Timestamp associated with the raw location.
          # @!attribute [rw] raw_location_sensor
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicleLocationSensor]
          #     Source of the raw location. Defaults to `GPS`.
          # @!attribute [rw] raw_location_accuracy
          #   @return [::Google::Protobuf::DoubleValue]
          #     Accuracy of `raw_location` as a radius, in meters.
          # @!attribute [rw] supplemental_location
          #   @return [::Google::Type::LatLng]
          #     Supplemental location provided by the integrating app.
          # @!attribute [rw] supplemental_location_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Timestamp associated with the supplemental location.
          # @!attribute [rw] supplemental_location_sensor
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicleLocationSensor]
          #     Source of the supplemental location. Defaults to
          #     `CUSTOMER_SUPPLIED_LOCATION`.
          # @!attribute [rw] supplemental_location_accuracy
          #   @return [::Google::Protobuf::DoubleValue]
          #     Accuracy of `supplemental_location` as a radius, in meters.
          # @!attribute [rw] road_snapped
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::Boolean]
          #     Deprecated: Use `is_road_snapped` instead.
          class DeliveryVehicleLocation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A time range.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Required. The start time of the time window (inclusive).
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Required. The end time of the time window (inclusive).
          class TimeWindow
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describes a task attribute as a key-value pair. The "key:value" string length
          # cannot exceed 256 characters.
          # @!attribute [rw] key
          #   @return [::String]
          #     The attribute's key. Keys may not contain the colon character (:).
          # @!attribute [rw] string_value
          #   @return [::String]
          #     String typed attribute value.
          # @!attribute [rw] bool_value
          #   @return [::Boolean]
          #     Boolean typed attribute value.
          # @!attribute [rw] number_value
          #   @return [::Float]
          #     Double typed attribute value.
          class TaskAttribute
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The sensor or methodology used to determine the location.
          module DeliveryVehicleLocationSensor
            # The sensor is unspecified or unknown.
            UNKNOWN_SENSOR = 0

            # GPS or Assisted GPS.
            GPS = 1

            # Assisted GPS, cell tower ID, or WiFi access point.
            NETWORK = 2

            # Cell tower ID or WiFi access point.
            PASSIVE = 3

            # A location determined by the mobile device to be the most likely
            # road position.
            ROAD_SNAPPED_LOCATION_PROVIDER = 4

            # A customer-supplied location from an independent source.  Typically, this
            # value is used for a location provided from sources other than the mobile
            # device running Driver SDK.  If the original source is described by one of
            # the other enum values, use that value. Locations marked
            # CUSTOMER_SUPPLIED_LOCATION are typically provided via a DeliveryVehicle's
            # `last_location.supplemental_location_sensor`.
            CUSTOMER_SUPPLIED_LOCATION = 5

            # A location calculated by Fleet Engine based on the signals available to it.
            # Output only. This value will be rejected if it is received in a request.
            FLEET_ENGINE_LOCATION = 6

            # Android's Fused Location Provider.
            FUSED_LOCATION_PROVIDER = 100

            # The location provider on Apple operating systems.
            CORE_LOCATION = 200
          end

          # The vehicle's navigation status.
          module DeliveryVehicleNavigationStatus
            # Unspecified navigation status.
            UNKNOWN_NAVIGATION_STATUS = 0

            # The Driver app's navigation is in `FREE_NAV` mode.
            NO_GUIDANCE = 1

            # Turn-by-turn navigation is available and the Driver app navigation has
            # entered `GUIDED_NAV` mode.
            ENROUTE_TO_DESTINATION = 2

            # The vehicle has gone off the suggested route.
            OFF_ROUTE = 3

            # The vehicle is within approximately 50m of the destination.
            ARRIVED_AT_DESTINATION = 4
          end
        end
      end
    end
  end
end
