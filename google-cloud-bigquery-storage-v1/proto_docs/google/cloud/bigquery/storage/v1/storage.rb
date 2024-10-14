# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Bigquery
      module Storage
        module V1
          # Request message for `CreateReadSession`.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The request project that owns the session, in the form of
          #     `projects/{project_id}`.
          # @!attribute [rw] read_session
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ReadSession]
          #     Required. Session to be created.
          # @!attribute [rw] max_stream_count
          #   @return [::Integer]
          #     Max initial number of streams. If unset or zero, the server will
          #     provide a value of streams so as to produce reasonable throughput. Must be
          #     non-negative. The number of streams may be lower than the requested number,
          #     depending on the amount parallelism that is reasonable for the table.
          #     There is a default system max limit of 1,000.
          #
          #     This must be greater than or equal to preferred_min_stream_count.
          #     Typically, clients should either leave this unset to let the system to
          #     determine an upper bound OR set this a size for the maximum "units of work"
          #     it can gracefully handle.
          # @!attribute [rw] preferred_min_stream_count
          #   @return [::Integer]
          #     The minimum preferred stream count. This parameter can be used to inform
          #     the service that there is a desired lower bound on the number of streams.
          #     This is typically a target parallelism of the client (e.g. a Spark
          #     cluster with N-workers would set this to a low multiple of N to ensure
          #     good cluster utilization).
          #
          #     The system will make a best effort to provide at least this number of
          #     streams, but in some cases might provide less.
          class CreateReadSessionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `ReadRows`.
          # @!attribute [rw] read_stream
          #   @return [::String]
          #     Required. Stream to read rows from.
          # @!attribute [rw] offset
          #   @return [::Integer]
          #     The offset requested must be less than the last row read from Read.
          #     Requesting a larger offset is undefined. If not specified, start reading
          #     from offset zero.
          class ReadRowsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Information on if the current connection is being throttled.
          # @!attribute [rw] throttle_percent
          #   @return [::Integer]
          #     How much this connection is being throttled. Zero means no throttling,
          #     100 means fully throttled.
          class ThrottleState
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Estimated stream statistics for a given read Stream.
          # @!attribute [rw] progress
          #   @return [::Google::Cloud::Bigquery::Storage::V1::StreamStats::Progress]
          #     Represents the progress of the current stream.
          class StreamStats
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] at_response_start
            #   @return [::Float]
            #     The fraction of rows assigned to the stream that have been processed by
            #     the server so far, not including the rows in the current response
            #     message.
            #
            #     This value, along with `at_response_end`, can be used to interpolate
            #     the progress made as the rows in the message are being processed using
            #     the following formula: `at_response_start + (at_response_end -
            #     at_response_start) * rows_processed_from_response / rows_in_response`.
            #
            #     Note that if a filter is provided, the `at_response_end` value of the
            #     previous response may not necessarily be equal to the
            #     `at_response_start` value of the current response.
            # @!attribute [rw] at_response_end
            #   @return [::Float]
            #     Similar to `at_response_start`, except that this value includes the
            #     rows in the current response.
            class Progress
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Response from calling `ReadRows` may include row data, progress and
          # throttling information.
          # @!attribute [rw] avro_rows
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AvroRows]
          #     Serialized row data in AVRO format.
          # @!attribute [rw] arrow_record_batch
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ArrowRecordBatch]
          #     Serialized row data in Arrow RecordBatch format.
          # @!attribute [rw] row_count
          #   @return [::Integer]
          #     Number of serialized rows in the rows block.
          # @!attribute [rw] stats
          #   @return [::Google::Cloud::Bigquery::Storage::V1::StreamStats]
          #     Statistics for the stream.
          # @!attribute [rw] throttle_state
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ThrottleState]
          #     Throttling state. If unset, the latest response still describes
          #     the current throttling status.
          # @!attribute [r] avro_schema
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AvroSchema]
          #     Output only. Avro schema.
          # @!attribute [r] arrow_schema
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ArrowSchema]
          #     Output only. Arrow schema.
          # @!attribute [rw] uncompressed_byte_size
          #   @return [::Integer]
          #     Optional. If the row data in this ReadRowsResponse is compressed, then
          #     uncompressed byte size is the original size of the uncompressed row data.
          #     If it is set to a value greater than 0, then decompress into a buffer of
          #     size uncompressed_byte_size using the compression codec that was requested
          #     during session creation time and which is specified in
          #     TableReadOptions.response_compression_codec in ReadSession.
          #     This value is not set if no response_compression_codec was not requested
          #     and it is -1 if the requested compression would not have reduced the size
          #     of this ReadRowsResponse's row data. This attempts to match Apache Arrow's
          #     behavior described here https://github.com/apache/arrow/issues/15102 where
          #     the uncompressed length may be set to -1 to indicate that the data that
          #     follows is not compressed, which can be useful for cases where compression
          #     does not yield appreciable savings. When uncompressed_byte_size is not
          #     greater than 0, the client should skip decompression.
          class ReadRowsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `SplitReadStream`.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the stream to split.
          # @!attribute [rw] fraction
          #   @return [::Float]
          #     A value in the range (0.0, 1.0) that specifies the fractional point at
          #     which the original stream should be split. The actual split point is
          #     evaluated on pre-filtered rows, so if a filter is provided, then there is
          #     no guarantee that the division of the rows between the new child streams
          #     will be proportional to this fractional value. Additionally, because the
          #     server-side unit for assigning data is collections of rows, this fraction
          #     will always map to a data storage boundary on the server side.
          class SplitReadStreamRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for `SplitReadStream`.
          # @!attribute [rw] primary_stream
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ReadStream]
          #     Primary stream, which contains the beginning portion of
          #     |original_stream|. An empty value indicates that the original stream can no
          #     longer be split.
          # @!attribute [rw] remainder_stream
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ReadStream]
          #     Remainder stream, which contains the tail of |original_stream|. An empty
          #     value indicates that the original stream can no longer be split.
          class SplitReadStreamResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `CreateWriteStream`.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Reference to the table to which the stream belongs, in the format
          #     of `projects/{project}/datasets/{dataset}/tables/{table}`.
          # @!attribute [rw] write_stream
          #   @return [::Google::Cloud::Bigquery::Storage::V1::WriteStream]
          #     Required. Stream to be created.
          class CreateWriteStreamRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `AppendRows`.
          #
          # Because AppendRows is a bidirectional streaming RPC, certain parts of the
          # AppendRowsRequest need only be specified for the first request before
          # switching table destinations. You can also switch table destinations within
          # the same connection for the default stream.
          #
          # The size of a single AppendRowsRequest must be less than 10 MB in size.
          # Requests larger than this return an error, typically `INVALID_ARGUMENT`.
          # @!attribute [rw] write_stream
          #   @return [::String]
          #     Required. The write_stream identifies the append operation. It must be
          #     provided in the following scenarios:
          #
          #     * In the first request to an AppendRows connection.
          #
          #     * In all subsequent requests to an AppendRows connection, if you use the
          #     same connection to write to multiple tables or change the input schema for
          #     default streams.
          #
          #     For explicitly created write streams, the format is:
          #
          #     * `projects/{project}/datasets/{dataset}/tables/{table}/streams/{id}`
          #
          #     For the special default stream, the format is:
          #
          #     * `projects/{project}/datasets/{dataset}/tables/{table}/streams/_default`.
          #
          #     An example of a possible sequence of requests with write_stream fields
          #     within a single connection:
          #
          #     * r1: \\{write_stream: stream_name_1}
          #
          #     * r2: \\{write_stream: /*omit*/}
          #
          #     * r3: \\{write_stream: /*omit*/}
          #
          #     * r4: \\{write_stream: stream_name_2}
          #
          #     * r5: \\{write_stream: stream_name_2}
          #
          #     The destination changed in request_4, so the write_stream field must be
          #     populated in all subsequent requests in this stream.
          # @!attribute [rw] offset
          #   @return [::Google::Protobuf::Int64Value]
          #     If present, the write is only performed if the next append offset is same
          #     as the provided value. If not present, the write is performed at the
          #     current end of stream. Specifying a value for this field is not allowed
          #     when calling AppendRows for the '_default' stream.
          # @!attribute [rw] proto_rows
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest::ProtoData]
          #     Rows in proto format.
          # @!attribute [rw] arrow_rows
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest::ArrowData]
          #     Rows in arrow format. This is an experimental feature only selected for
          #     allowlisted customers.
          # @!attribute [rw] trace_id
          #   @return [::String]
          #     Id set by client to annotate its identity. Only initial request setting is
          #     respected.
          # @!attribute [rw] missing_value_interpretations
          #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest::MissingValueInterpretation}]
          #     A map to indicate how to interpret missing value for some fields. Missing
          #     values are fields present in user schema but missing in rows. The key is
          #     the field name. The value is the interpretation of missing values for the
          #     field.
          #
          #     For example, a map \\{'foo': NULL_VALUE, 'bar': DEFAULT_VALUE} means all
          #     missing values in field foo are interpreted as NULL, all missing values in
          #     field bar are interpreted as the default value of field bar in table
          #     schema.
          #
          #     If a field is not in this map and has missing values, the missing values
          #     in this field are interpreted as NULL.
          #
          #     This field only applies to the current request, it won't affect other
          #     requests on the connection.
          #
          #     Currently, field name can only be top-level column name, can't be a struct
          #     field path like 'foo.bar'.
          # @!attribute [rw] default_missing_value_interpretation
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest::MissingValueInterpretation]
          #     Optional. Default missing value interpretation for all columns in the
          #     table. When a value is specified on an `AppendRowsRequest`, it is applied
          #     to all requests on the connection from that point forward, until a
          #     subsequent `AppendRowsRequest` sets it to a different value.
          #     `missing_value_interpretation` can override
          #     `default_missing_value_interpretation`. For example, if you want to write
          #     `NULL` instead of using default values for some columns, you can set
          #     `default_missing_value_interpretation` to `DEFAULT_VALUE` and at the same
          #     time, set `missing_value_interpretations` to `NULL_VALUE` on those columns.
          class AppendRowsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Arrow schema and data.
            # Arrow format is an experimental feature only selected for allowlisted
            # customers.
            # @!attribute [rw] writer_schema
            #   @return [::Google::Cloud::Bigquery::Storage::V1::ArrowSchema]
            #     Optional. Arrow Schema used to serialize the data.
            # @!attribute [rw] rows
            #   @return [::Google::Cloud::Bigquery::Storage::V1::ArrowRecordBatch]
            #     Required. Serialized row data in Arrow format.
            class ArrowData
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # ProtoData contains the data rows and schema when constructing append
            # requests.
            # @!attribute [rw] writer_schema
            #   @return [::Google::Cloud::Bigquery::Storage::V1::ProtoSchema]
            #     The protocol buffer schema used to serialize the data. Provide this value
            #     whenever:
            #
            #     * You send the first request of an RPC connection.
            #
            #     * You change the input schema.
            #
            #     * You specify a new destination table.
            # @!attribute [rw] rows
            #   @return [::Google::Cloud::Bigquery::Storage::V1::ProtoRows]
            #     Serialized row data in protobuf message format.
            #     Currently, the backend expects the serialized rows to adhere to
            #     proto2 semantics when appending rows, particularly with respect to
            #     how default values are encoded.
            class ProtoData
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest::MissingValueInterpretation]
            class MissingValueInterpretationsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # An enum to indicate how to interpret missing values of fields that are
            # present in user schema but missing in rows. A missing value can represent a
            # NULL or a column default value defined in BigQuery table schema.
            module MissingValueInterpretation
              # Invalid missing value interpretation. Requests with this value will be
              # rejected.
              MISSING_VALUE_INTERPRETATION_UNSPECIFIED = 0

              # Missing value is interpreted as NULL.
              NULL_VALUE = 1

              # Missing value is interpreted as column default value if declared in the
              # table schema, NULL otherwise.
              DEFAULT_VALUE = 2
            end
          end

          # Response message for `AppendRows`.
          # @!attribute [rw] append_result
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AppendRowsResponse::AppendResult]
          #     Result if the append is successful.
          # @!attribute [rw] error
          #   @return [::Google::Rpc::Status]
          #     Error returned when problems were encountered.  If present,
          #     it indicates rows were not accepted into the system.
          #     Users can retry or continue with other append requests within the
          #     same connection.
          #
          #     Additional information about error signalling:
          #
          #     ALREADY_EXISTS: Happens when an append specified an offset, and the
          #     backend already has received data at this offset.  Typically encountered
          #     in retry scenarios, and can be ignored.
          #
          #     OUT_OF_RANGE: Returned when the specified offset in the stream is beyond
          #     the current end of the stream.
          #
          #     INVALID_ARGUMENT: Indicates a malformed request or data.
          #
          #     ABORTED: Request processing is aborted because of prior failures.  The
          #     request can be retried if previous failure is addressed.
          #
          #     INTERNAL: Indicates server side error(s) that can be retried.
          # @!attribute [rw] updated_schema
          #   @return [::Google::Cloud::Bigquery::Storage::V1::TableSchema]
          #     If backend detects a schema update, pass it to user so that user can
          #     use it to input new type of message. It will be empty when no schema
          #     updates have occurred.
          # @!attribute [rw] row_errors
          #   @return [::Array<::Google::Cloud::Bigquery::Storage::V1::RowError>]
          #     If a request failed due to corrupted rows, no rows in the batch will be
          #     appended. The API will return row level error info, so that the caller can
          #     remove the bad rows and retry the request.
          # @!attribute [rw] write_stream
          #   @return [::String]
          #     The target of the append operation. Matches the write_stream in the
          #     corresponding request.
          class AppendRowsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # AppendResult is returned for successful append requests.
            # @!attribute [rw] offset
            #   @return [::Google::Protobuf::Int64Value]
            #     The row offset at which the last append occurred. The offset will not be
            #     set if appending using default streams.
            class AppendResult
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Request message for `GetWriteStreamRequest`.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the stream to get, in the form of
          #     `projects/{project}/datasets/{dataset}/tables/{table}/streams/{stream}`.
          # @!attribute [rw] view
          #   @return [::Google::Cloud::Bigquery::Storage::V1::WriteStreamView]
          #     Indicates whether to get full or partial view of the WriteStream. If
          #     not set, view returned will be basic.
          class GetWriteStreamRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `BatchCommitWriteStreams`.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Parent table that all the streams should belong to, in the form
          #     of `projects/{project}/datasets/{dataset}/tables/{table}`.
          # @!attribute [rw] write_streams
          #   @return [::Array<::String>]
          #     Required. The group of streams that will be committed atomically.
          class BatchCommitWriteStreamsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for `BatchCommitWriteStreams`.
          # @!attribute [rw] commit_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which streams were committed in microseconds granularity.
          #     This field will only exist when there are no stream errors.
          #     **Note** if this field is not set, it means the commit was not successful.
          # @!attribute [rw] stream_errors
          #   @return [::Array<::Google::Cloud::Bigquery::Storage::V1::StorageError>]
          #     Stream level error if commit failed. Only streams with error will be in
          #     the list.
          #     If empty, there is no error and all streams are committed successfully.
          #     If non empty, certain streams have errors and ZERO stream is committed due
          #     to atomicity guarantee.
          class BatchCommitWriteStreamsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for invoking `FinalizeWriteStream`.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the stream to finalize, in the form of
          #     `projects/{project}/datasets/{dataset}/tables/{table}/streams/{stream}`.
          class FinalizeWriteStreamRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for `FinalizeWriteStream`.
          # @!attribute [rw] row_count
          #   @return [::Integer]
          #     Number of rows in the finalized stream.
          class FinalizeWriteStreamResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `FlushRows`.
          # @!attribute [rw] write_stream
          #   @return [::String]
          #     Required. The stream that is the target of the flush operation.
          # @!attribute [rw] offset
          #   @return [::Google::Protobuf::Int64Value]
          #     Ending offset of the flush operation. Rows before this offset(including
          #     this offset) will be flushed.
          class FlushRowsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Respond message for `FlushRows`.
          # @!attribute [rw] offset
          #   @return [::Integer]
          #     The rows before this offset (including this offset) are flushed.
          class FlushRowsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Structured custom BigQuery Storage error message. The error can be attached
          # as error details in the returned rpc Status. In particular, the use of error
          # codes allows more structured error handling, and reduces the need to evaluate
          # unstructured error text strings.
          # @!attribute [rw] code
          #   @return [::Google::Cloud::Bigquery::Storage::V1::StorageError::StorageErrorCode]
          #     BigQuery Storage specific error code.
          # @!attribute [rw] entity
          #   @return [::String]
          #     Name of the failed entity.
          # @!attribute [rw] error_message
          #   @return [::String]
          #     Message that describes the error.
          class StorageError
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Error code for `StorageError`.
            module StorageErrorCode
              # Default error.
              STORAGE_ERROR_CODE_UNSPECIFIED = 0

              # Table is not found in the system.
              TABLE_NOT_FOUND = 1

              # Stream is already committed.
              STREAM_ALREADY_COMMITTED = 2

              # Stream is not found.
              STREAM_NOT_FOUND = 3

              # Invalid Stream type.
              # For example, you try to commit a stream that is not pending.
              INVALID_STREAM_TYPE = 4

              # Invalid Stream state.
              # For example, you try to commit a stream that is not finalized or is
              # garbaged.
              INVALID_STREAM_STATE = 5

              # Stream is finalized.
              STREAM_FINALIZED = 6

              # There is a schema mismatch and it is caused by user schema has extra
              # field than bigquery schema.
              SCHEMA_MISMATCH_EXTRA_FIELDS = 7

              # Offset already exists.
              OFFSET_ALREADY_EXISTS = 8

              # Offset out of range.
              OFFSET_OUT_OF_RANGE = 9

              # Customer-managed encryption key (CMEK) not provided for CMEK-enabled
              # data.
              CMEK_NOT_PROVIDED = 10

              # Customer-managed encryption key (CMEK) was incorrectly provided.
              INVALID_CMEK_PROVIDED = 11

              # There is an encryption error while using customer-managed encryption key.
              CMEK_ENCRYPTION_ERROR = 12

              # Key Management Service (KMS) service returned an error, which can be
              # retried.
              KMS_SERVICE_ERROR = 13

              # Permission denied while using customer-managed encryption key.
              KMS_PERMISSION_DENIED = 14
            end
          end

          # The message that presents row level error info in a request.
          # @!attribute [rw] index
          #   @return [::Integer]
          #     Index of the malformed row in the request.
          # @!attribute [rw] code
          #   @return [::Google::Cloud::Bigquery::Storage::V1::RowError::RowErrorCode]
          #     Structured error reason for a row error.
          # @!attribute [rw] message
          #   @return [::String]
          #     Description of the issue encountered when processing the row.
          class RowError
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Error code for `RowError`.
            module RowErrorCode
              # Default error.
              ROW_ERROR_CODE_UNSPECIFIED = 0

              # One or more fields in the row has errors.
              FIELDS_ERROR = 1
            end
          end
        end
      end
    end
  end
end
