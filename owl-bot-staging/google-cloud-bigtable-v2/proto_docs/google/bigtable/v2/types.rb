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
    module Bigtable
      module V2
        # `Type` represents the type of data that is written to, read from, or stored
        # in Bigtable. It is heavily based on the GoogleSQL standard to help maintain
        # familiarity and consistency across products and features.
        #
        # For compatibility with Bigtable's existing untyped APIs, each `Type` includes
        # an `Encoding` which describes how to convert to/from the underlying data.
        #
        # Each encoding also defines the following properties:
        #
        #  * Order-preserving: Does the encoded value sort consistently with the
        #    original typed value? Note that Bigtable will always sort data based on
        #    the raw encoded value, *not* the decoded type.
        #     - Example: BYTES values sort in the same order as their raw encodings.
        #     - Counterexample: Encoding INT64 as a fixed-width decimal string does
        #       *not* preserve sort order when dealing with negative numbers.
        #       `INT64(1) > INT64(-1)`, but `STRING("-00001") > STRING("00001)`.
        #  * Self-delimiting: If we concatenate two encoded values, can we always tell
        #    where the first one ends and the second one begins?
        #     - Example: If we encode INT64s to fixed-width STRINGs, the first value
        #       will always contain exactly N digits, possibly preceded by a sign.
        #     - Counterexample: If we concatenate two UTF-8 encoded STRINGs, we have
        #       no way to tell where the first one ends.
        #  * Compatibility: Which other systems have matching encoding schemes? For
        #    example, does this encoding have a GoogleSQL equivalent? HBase? Java?
        # @!attribute [rw] bytes_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Bytes]
        #     Bytes
        # @!attribute [rw] string_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::String]
        #     String
        # @!attribute [rw] int64_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Int64]
        #     Int64
        # @!attribute [rw] float32_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Float32]
        #     Float32
        # @!attribute [rw] float64_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Float64]
        #     Float64
        # @!attribute [rw] bool_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Bool]
        #     Bool
        # @!attribute [rw] timestamp_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Timestamp]
        #     Timestamp
        # @!attribute [rw] date_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Date]
        #     Date
        # @!attribute [rw] aggregate_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Aggregate]
        #     Aggregate
        # @!attribute [rw] struct_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Struct]
        #     Struct
        # @!attribute [rw] array_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Array]
        #     Array
        # @!attribute [rw] map_type
        #   @return [::Google::Cloud::Bigtable::V2::Type::Map]
        #     Map
        class Type
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Bytes
          # Values of type `Bytes` are stored in `Value.bytes_value`.
          # @!attribute [rw] encoding
          #   @return [::Google::Cloud::Bigtable::V2::Type::Bytes::Encoding]
          #     The encoding to use when converting to/from lower level types.
          class Bytes
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Rules used to convert to/from lower level types.
            # @!attribute [rw] raw
            #   @return [::Google::Cloud::Bigtable::V2::Type::Bytes::Encoding::Raw]
            #     Use `Raw` encoding.
            class Encoding
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Leaves the value "as-is"
              # * Order-preserving? Yes
              # * Self-delimiting? No
              # * Compatibility? N/A
              class Raw
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end

          # String
          # Values of type `String` are stored in `Value.string_value`.
          # @!attribute [rw] encoding
          #   @return [::Google::Cloud::Bigtable::V2::Type::String::Encoding]
          #     The encoding to use when converting to/from lower level types.
          class String
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Rules used to convert to/from lower level types.
            # @!attribute [rw] utf8_raw
            #   @deprecated This field is deprecated and may be removed in the next major version update.
            #   @return [::Google::Cloud::Bigtable::V2::Type::String::Encoding::Utf8Raw]
            #     Deprecated: if set, converts to an empty `utf8_bytes`.
            # @!attribute [rw] utf8_bytes
            #   @return [::Google::Cloud::Bigtable::V2::Type::String::Encoding::Utf8Bytes]
            #     Use `Utf8Bytes` encoding.
            class Encoding
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Deprecated: prefer the equivalent `Utf8Bytes`.
              # @deprecated This message is deprecated and may be removed in the next major version update.
              class Utf8Raw
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # UTF-8 encoding
              # * Order-preserving? Yes (code point order)
              # * Self-delimiting? No
              # * Compatibility?
              #    - BigQuery Federation `TEXT` encoding
              #    - HBase `Bytes.toBytes`
              #    - Java `String#getBytes(StandardCharsets.UTF_8)`
              class Utf8Bytes
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end

          # Int64
          # Values of type `Int64` are stored in `Value.int_value`.
          # @!attribute [rw] encoding
          #   @return [::Google::Cloud::Bigtable::V2::Type::Int64::Encoding]
          #     The encoding to use when converting to/from lower level types.
          class Int64
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Rules used to convert to/from lower level types.
            # @!attribute [rw] big_endian_bytes
            #   @return [::Google::Cloud::Bigtable::V2::Type::Int64::Encoding::BigEndianBytes]
            #     Use `BigEndianBytes` encoding.
            class Encoding
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Encodes the value as an 8-byte big endian twos complement `Bytes`
              # value.
              # * Order-preserving? No (positive values only)
              # * Self-delimiting? Yes
              # * Compatibility?
              #    - BigQuery Federation `BINARY` encoding
              #    - HBase `Bytes.toBytes`
              #    - Java `ByteBuffer.putLong()` with `ByteOrder.BIG_ENDIAN`
              # @!attribute [rw] bytes_type
              #   @return [::Google::Cloud::Bigtable::V2::Type::Bytes]
              #     Deprecated: ignored if set.
              class BigEndianBytes
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end

          # bool
          # Values of type `Bool` are stored in `Value.bool_value`.
          class Bool
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Float32
          # Values of type `Float32` are stored in `Value.float_value`.
          class Float32
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Float64
          # Values of type `Float64` are stored in `Value.float_value`.
          class Float64
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Timestamp
          # Values of type `Timestamp` are stored in `Value.timestamp_value`.
          class Timestamp
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Date
          # Values of type `Date` are stored in `Value.date_value`.
          class Date
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A structured data value, consisting of fields which map to dynamically
          # typed values.
          # Values of type `Struct` are stored in `Value.array_value` where entries are
          # in the same order and number as `field_types`.
          # @!attribute [rw] fields
          #   @return [::Array<::Google::Cloud::Bigtable::V2::Type::Struct::Field>]
          #     The names and types of the fields in this struct.
          class Struct
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A struct field and its type.
            # @!attribute [rw] field_name
            #   @return [::String]
            #     The field name (optional). Fields without a `field_name` are considered
            #     anonymous and cannot be referenced by name.
            # @!attribute [rw] type
            #   @return [::Google::Cloud::Bigtable::V2::Type]
            #     The type of values in this field.
            class Field
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # An ordered list of elements of a given type.
          # Values of type `Array` are stored in `Value.array_value`.
          # @!attribute [rw] element_type
          #   @return [::Google::Cloud::Bigtable::V2::Type]
          #     The type of the elements in the array. This must not be `Array`.
          class Array
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A mapping of keys to values of a given type.
          # Values of type `Map` are stored in a `Value.array_value` where each entry
          # is another `Value.array_value` with two elements (the key and the value,
          # in that order).
          # Normally encoded Map values won't have repeated keys, however, clients are
          # expected to handle the case in which they do. If the same key appears
          # multiple times, the _last_ value takes precedence.
          # @!attribute [rw] key_type
          #   @return [::Google::Cloud::Bigtable::V2::Type]
          #     The type of a map key.
          #     Only `Bytes`, `String`, and `Int64` are allowed as key types.
          # @!attribute [rw] value_type
          #   @return [::Google::Cloud::Bigtable::V2::Type]
          #     The type of the values in a map.
          class Map
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A value that combines incremental updates into a summarized value.
          #
          # Data is never directly written or read using type `Aggregate`. Writes will
          # provide either the `input_type` or `state_type`, and reads will always
          # return the `state_type` .
          # @!attribute [rw] input_type
          #   @return [::Google::Cloud::Bigtable::V2::Type]
          #     Type of the inputs that are accumulated by this `Aggregate`, which must
          #     specify a full encoding.
          #     Use `AddInput` mutations to accumulate new inputs.
          # @!attribute [r] state_type
          #   @return [::Google::Cloud::Bigtable::V2::Type]
          #     Output only. Type that holds the internal accumulator state for the
          #     `Aggregate`. This is a function of the `input_type` and `aggregator`
          #     chosen, and will always specify a full encoding.
          # @!attribute [rw] sum
          #   @return [::Google::Cloud::Bigtable::V2::Type::Aggregate::Sum]
          #     Sum aggregator.
          # @!attribute [rw] hllpp_unique_count
          #   @return [::Google::Cloud::Bigtable::V2::Type::Aggregate::HyperLogLogPlusPlusUniqueCount]
          #     HyperLogLogPlusPlusUniqueCount aggregator.
          # @!attribute [rw] max
          #   @return [::Google::Cloud::Bigtable::V2::Type::Aggregate::Max]
          #     Max aggregator.
          # @!attribute [rw] min
          #   @return [::Google::Cloud::Bigtable::V2::Type::Aggregate::Min]
          #     Min aggregator.
          class Aggregate
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Computes the sum of the input values.
            # Allowed input: `Int64`
            # State: same as input
            class Sum
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Computes the max of the input values.
            # Allowed input: `Int64`
            # State: same as input
            class Max
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Computes the min of the input values.
            # Allowed input: `Int64`
            # State: same as input
            class Min
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Computes an approximate unique count over the input values. When using
            # raw data as input, be careful to use a consistent encoding. Otherwise
            # the same value encoded differently could count more than once, or two
            # distinct values could count as identical.
            # Input: Any, or omit for Raw
            # State: TBD
            # Special state conversions: `Int64` (the unique count estimate)
            class HyperLogLogPlusPlusUniqueCount
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end
