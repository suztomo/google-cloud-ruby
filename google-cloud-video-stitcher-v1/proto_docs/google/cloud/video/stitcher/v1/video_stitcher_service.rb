# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module Video
      module Stitcher
        module V1
          # Request message for VideoStitcherService.createCdnKey.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The project in which the CDN key should be created, in the form of
          #     `projects/{project_number}/locations/{location}`.
          # @!attribute [rw] cdn_key
          #   @return [::Google::Cloud::Video::Stitcher::V1::CdnKey]
          #     Required. The CDN key resource to create.
          # @!attribute [rw] cdn_key_id
          #   @return [::String]
          #     Required. The ID to use for the CDN key, which will become the final component of
          #     the CDN key's resource name.
          #
          #     This value should conform to RFC-1034, which restricts to
          #     lower-case letters, numbers, and hyphen, with the first character a
          #     letter, the last a letter or a number, and a 63 character maximum.
          class CreateCdnKeyRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.listCdnKeys.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The project that contains the list of CDN keys, in the form of
          #     `projects/{project_number}/locations/{location}`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Requested page size. Server may return fewer items than requested.
          #     If unspecified, server will pick an appropriate default.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     A token identifying a page of results the server should return.
          # @!attribute [rw] filter
          #   @return [::String]
          #     Filtering results
          # @!attribute [rw] order_by
          #   @return [::String]
          #     Hint for how to order the results
          class ListCdnKeysRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for VideoStitcher.ListCdnKeys.
          # @!attribute [rw] cdn_keys
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::CdnKey>]
          #     List of CDN keys.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A token identifying a page of results the server should return.
          # @!attribute [rw] unreachable
          #   @return [::Array<::String>]
          #     Locations that could not be reached.
          class ListCdnKeysResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.getCdnKey.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the CDN key to be retrieved, in the form of
          #     `projects/{project}/locations/{location}/cdnKeys/{id}`.
          class GetCdnKeyRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.deleteCdnKey.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the CDN key to be deleted, in the form of
          #     `projects/{project_number}/locations/{location}/cdnKeys/{id}`.
          class DeleteCdnKeyRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.updateCdnKey.
          # @!attribute [rw] cdn_key
          #   @return [::Google::Cloud::Video::Stitcher::V1::CdnKey]
          #     Required. The CDN key resource which replaces the resource on the server.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The update mask applies to the resource.
          #     For the `FieldMask` definition, see
          #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
          class UpdateCdnKeyRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.createVodSession
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The project and location in which the VOD session should be created, in the
          #     form of `projects/{project_number}/locations/{location}`.
          # @!attribute [rw] vod_session
          #   @return [::Google::Cloud::Video::Stitcher::V1::VodSession]
          #     Required. Parameters for creating a session.
          class CreateVodSessionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.getVodSession
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the VOD session to be retrieved, in the form of
          #     `projects/{project_number}/locations/{location}/vodSessions/{id}`.
          class GetVodSessionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.listVodStitchDetails.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The VOD session where the stitch details belong to, in the form of
          #     `projects/{project}/locations/{location}/vodSessions/{id}`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous List request, if any.
          class ListVodStitchDetailsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for VideoStitcherService.listVodStitchDetails.
          # @!attribute [rw] vod_stitch_details
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::VodStitchDetail>]
          #     A List of stitch Details.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     The pagination token.
          class ListVodStitchDetailsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.getVodStitchDetail.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the stitch detail in the specified VOD session, in the form of
          #     `projects/{project}/locations/{location}/vodSessions/{vod_session_id}/vodStitchDetails/{id}`.
          class GetVodStitchDetailRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.listVodAdTagDetails.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The VOD session which the ad tag details belong to, in the form of
          #     `projects/{project}/locations/{location}/vodSessions/{vod_session_id}`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous List request, if any.
          class ListVodAdTagDetailsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for VideoStitcherService.listVodAdTagDetails.
          # @!attribute [rw] vod_ad_tag_details
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::VodAdTagDetail>]
          #     A List of ad tag details.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     The pagination token.
          class ListVodAdTagDetailsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.getVodAdTagDetail
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the ad tag detail for the specified VOD session, in the form of
          #     `projects/{project}/locations/{location}/vodSessions/{vod_session_id}/vodAdTagDetails/{vod_ad_tag_detail}`.
          class GetVodAdTagDetailRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.listLiveAdTagDetails.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The resource parent in the form of
          #     `projects/{project}/locations/{location}/liveSessions/{live_session}`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The pagination token returned from a previous List request.
          class ListLiveAdTagDetailsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for VideoStitcherService.listLiveAdTagDetails.
          # @!attribute [rw] live_ad_tag_details
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::LiveAdTagDetail>]
          #     A list of live session ad tag details.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     The pagination token.
          class ListLiveAdTagDetailsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.getLiveAdTagDetail
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The resource name in the form of
          #     `projects/{project}/locations/{location}/liveSessions/{live_session}/liveAdTagDetails/{live_ad_tag_detail}`.
          class GetLiveAdTagDetailRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.createSlate.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The project in which the slate should be created, in the form of
          #     `projects/{project_number}`.
          # @!attribute [rw] slate_id
          #   @return [::String]
          #     Required. The unique identifier for the slate.
          #     This value should conform to RFC-1034, which restricts to
          #     lower-case letters, numbers, and hyphen, with the first character a
          #     letter, the last a letter or a number, and a 63 character maximum.
          # @!attribute [rw] slate
          #   @return [::Google::Cloud::Video::Stitcher::V1::Slate]
          #     Required. The slate to create.
          class CreateSlateRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.getSlate.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the slate to be retrieved, of the slate, in the form of
          #     `projects/{project_number}/locations/{location}/slates/{id}`.
          class GetSlateRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.listSlates.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The project to list slates, in the form of `projects/{project_number}`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Requested page size. Server may return fewer items than requested.
          #     If unspecified, server will pick an appropriate default.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     A token identifying a page of results the server should return.
          # @!attribute [rw] filter
          #   @return [::String]
          #     Filtering results
          # @!attribute [rw] order_by
          #   @return [::String]
          #     Hint for how to order the results
          class ListSlatesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for VideoStitcherService.listSlates.
          # @!attribute [rw] slates
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::Slate>]
          #     The list of slates
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A token identifying a page of results the server should return.
          # @!attribute [rw] unreachable
          #   @return [::Array<::String>]
          #     Locations that could not be reached.
          class ListSlatesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.updateSlate.
          # @!attribute [rw] slate
          #   @return [::Google::Cloud::Video::Stitcher::V1::Slate]
          #     Required. The resource with updated fields.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The update mask which specifies fields which should be updated.
          class UpdateSlateRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.deleteSlate.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the slate to be deleted, in the form of
          #     `projects/{project_number}/locations/{location}/slates/{id}`.
          class DeleteSlateRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.createLiveSession.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The project and location in which the live session should be created,
          #     in the form of `projects/{project_number}/locations/{location}`.
          # @!attribute [rw] live_session
          #   @return [::Google::Cloud::Video::Stitcher::V1::LiveSession]
          #     Required. Parameters for creating a live session.
          class CreateLiveSessionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for VideoStitcherService.getSession.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the live session, in the form of
          #     `projects/{project_number}/locations/{location}/liveSessions/{id}`.
          class GetLiveSessionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
