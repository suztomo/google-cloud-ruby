# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/analytics/admin/v1alpha/analytics_admin.proto

require 'google/protobuf'

require 'google/analytics/admin/v1alpha/access_report_pb'
require 'google/analytics/admin/v1alpha/audience_pb'
require 'google/analytics/admin/v1alpha/resources_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/analytics/admin/v1alpha/analytics_admin.proto", :syntax => :proto3) do
    add_message "google.analytics.admin.v1alpha.RunAccessReportRequest" do
      optional :entity, :string, 1
      repeated :dimensions, :message, 2, "google.analytics.admin.v1alpha.AccessDimension"
      repeated :metrics, :message, 3, "google.analytics.admin.v1alpha.AccessMetric"
      repeated :date_ranges, :message, 4, "google.analytics.admin.v1alpha.AccessDateRange"
      optional :dimension_filter, :message, 5, "google.analytics.admin.v1alpha.AccessFilterExpression"
      optional :metric_filter, :message, 6, "google.analytics.admin.v1alpha.AccessFilterExpression"
      optional :offset, :int64, 7
      optional :limit, :int64, 8
      optional :time_zone, :string, 9
      repeated :order_bys, :message, 10, "google.analytics.admin.v1alpha.AccessOrderBy"
      optional :return_entity_quota, :bool, 11
    end
    add_message "google.analytics.admin.v1alpha.RunAccessReportResponse" do
      repeated :dimension_headers, :message, 1, "google.analytics.admin.v1alpha.AccessDimensionHeader"
      repeated :metric_headers, :message, 2, "google.analytics.admin.v1alpha.AccessMetricHeader"
      repeated :rows, :message, 3, "google.analytics.admin.v1alpha.AccessRow"
      optional :row_count, :int32, 4
      optional :quota, :message, 5, "google.analytics.admin.v1alpha.AccessQuota"
    end
    add_message "google.analytics.admin.v1alpha.GetAccountRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListAccountsRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
      optional :show_deleted, :bool, 3
    end
    add_message "google.analytics.admin.v1alpha.ListAccountsResponse" do
      repeated :accounts, :message, 1, "google.analytics.admin.v1alpha.Account"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.DeleteAccountRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateAccountRequest" do
      optional :account, :message, 1, "google.analytics.admin.v1alpha.Account"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.ProvisionAccountTicketRequest" do
      optional :account, :message, 1, "google.analytics.admin.v1alpha.Account"
      optional :redirect_uri, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.ProvisionAccountTicketResponse" do
      optional :account_ticket_id, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.GetPropertyRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListPropertiesRequest" do
      optional :filter, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :show_deleted, :bool, 4
    end
    add_message "google.analytics.admin.v1alpha.ListPropertiesResponse" do
      repeated :properties, :message, 1, "google.analytics.admin.v1alpha.Property"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.UpdatePropertyRequest" do
      optional :property, :message, 1, "google.analytics.admin.v1alpha.Property"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.CreatePropertyRequest" do
      optional :property, :message, 1, "google.analytics.admin.v1alpha.Property"
    end
    add_message "google.analytics.admin.v1alpha.DeletePropertyRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.GetUserLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.BatchGetUserLinksRequest" do
      optional :parent, :string, 1
      repeated :names, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.BatchGetUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.ListUserLinksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.UserLink"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.AuditUserLinksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.AuditUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.AuditUserLink"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.CreateUserLinkRequest" do
      optional :parent, :string, 1
      optional :notify_new_user, :bool, 2
      optional :user_link, :message, 3, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.BatchCreateUserLinksRequest" do
      optional :parent, :string, 1
      optional :notify_new_users, :bool, 2
      repeated :requests, :message, 3, "google.analytics.admin.v1alpha.CreateUserLinkRequest"
    end
    add_message "google.analytics.admin.v1alpha.BatchCreateUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.UpdateUserLinkRequest" do
      optional :user_link, :message, 1, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.BatchUpdateUserLinksRequest" do
      optional :parent, :string, 1
      repeated :requests, :message, 2, "google.analytics.admin.v1alpha.UpdateUserLinkRequest"
    end
    add_message "google.analytics.admin.v1alpha.BatchUpdateUserLinksResponse" do
      repeated :user_links, :message, 1, "google.analytics.admin.v1alpha.UserLink"
    end
    add_message "google.analytics.admin.v1alpha.DeleteUserLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.BatchDeleteUserLinksRequest" do
      optional :parent, :string, 1
      repeated :requests, :message, 2, "google.analytics.admin.v1alpha.DeleteUserLinkRequest"
    end
    add_message "google.analytics.admin.v1alpha.CreateFirebaseLinkRequest" do
      optional :parent, :string, 1
      optional :firebase_link, :message, 2, "google.analytics.admin.v1alpha.FirebaseLink"
    end
    add_message "google.analytics.admin.v1alpha.DeleteFirebaseLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListFirebaseLinksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListFirebaseLinksResponse" do
      repeated :firebase_links, :message, 1, "google.analytics.admin.v1alpha.FirebaseLink"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetGlobalSiteTagRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.CreateGoogleAdsLinkRequest" do
      optional :parent, :string, 1
      optional :google_ads_link, :message, 2, "google.analytics.admin.v1alpha.GoogleAdsLink"
    end
    add_message "google.analytics.admin.v1alpha.UpdateGoogleAdsLinkRequest" do
      optional :google_ads_link, :message, 1, "google.analytics.admin.v1alpha.GoogleAdsLink"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.DeleteGoogleAdsLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListGoogleAdsLinksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListGoogleAdsLinksResponse" do
      repeated :google_ads_links, :message, 1, "google.analytics.admin.v1alpha.GoogleAdsLink"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetDataSharingSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListAccountSummariesRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.ListAccountSummariesResponse" do
      repeated :account_summaries, :message, 1, "google.analytics.admin.v1alpha.AccountSummary"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.AcknowledgeUserDataCollectionRequest" do
      optional :property, :string, 1
      optional :acknowledgement, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.AcknowledgeUserDataCollectionResponse" do
    end
    add_message "google.analytics.admin.v1alpha.SearchChangeHistoryEventsRequest" do
      optional :account, :string, 1
      optional :property, :string, 2
      repeated :resource_type, :enum, 3, "google.analytics.admin.v1alpha.ChangeHistoryResourceType"
      repeated :action, :enum, 4, "google.analytics.admin.v1alpha.ActionType"
      repeated :actor_email, :string, 5
      optional :earliest_change_time, :message, 6, "google.protobuf.Timestamp"
      optional :latest_change_time, :message, 7, "google.protobuf.Timestamp"
      optional :page_size, :int32, 8
      optional :page_token, :string, 9
    end
    add_message "google.analytics.admin.v1alpha.SearchChangeHistoryEventsResponse" do
      repeated :change_history_events, :message, 1, "google.analytics.admin.v1alpha.ChangeHistoryEvent"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetMeasurementProtocolSecretRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.CreateMeasurementProtocolSecretRequest" do
      optional :parent, :string, 1
      optional :measurement_protocol_secret, :message, 2, "google.analytics.admin.v1alpha.MeasurementProtocolSecret"
    end
    add_message "google.analytics.admin.v1alpha.DeleteMeasurementProtocolSecretRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateMeasurementProtocolSecretRequest" do
      optional :measurement_protocol_secret, :message, 1, "google.analytics.admin.v1alpha.MeasurementProtocolSecret"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.ListMeasurementProtocolSecretsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListMeasurementProtocolSecretsResponse" do
      repeated :measurement_protocol_secrets, :message, 1, "google.analytics.admin.v1alpha.MeasurementProtocolSecret"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetGoogleSignalsSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateGoogleSignalsSettingsRequest" do
      optional :google_signals_settings, :message, 1, "google.analytics.admin.v1alpha.GoogleSignalsSettings"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.CreateConversionEventRequest" do
      optional :conversion_event, :message, 1, "google.analytics.admin.v1alpha.ConversionEvent"
      optional :parent, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetConversionEventRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.DeleteConversionEventRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListConversionEventsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListConversionEventsResponse" do
      repeated :conversion_events, :message, 1, "google.analytics.admin.v1alpha.ConversionEvent"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetDisplayVideo360AdvertiserLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListDisplayVideo360AdvertiserLinksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListDisplayVideo360AdvertiserLinksResponse" do
      repeated :display_video_360_advertiser_links, :message, 1, "google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLink"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.CreateDisplayVideo360AdvertiserLinkRequest" do
      optional :parent, :string, 1
      optional :display_video_360_advertiser_link, :message, 2, "google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLink"
    end
    add_message "google.analytics.admin.v1alpha.DeleteDisplayVideo360AdvertiserLinkRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateDisplayVideo360AdvertiserLinkRequest" do
      optional :display_video_360_advertiser_link, :message, 1, "google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLink"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.GetDisplayVideo360AdvertiserLinkProposalRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListDisplayVideo360AdvertiserLinkProposalsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListDisplayVideo360AdvertiserLinkProposalsResponse" do
      repeated :display_video_360_advertiser_link_proposals, :message, 1, "google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLinkProposal"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.CreateDisplayVideo360AdvertiserLinkProposalRequest" do
      optional :parent, :string, 1
      optional :display_video_360_advertiser_link_proposal, :message, 2, "google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLinkProposal"
    end
    add_message "google.analytics.admin.v1alpha.DeleteDisplayVideo360AdvertiserLinkProposalRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ApproveDisplayVideo360AdvertiserLinkProposalRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ApproveDisplayVideo360AdvertiserLinkProposalResponse" do
      optional :display_video_360_advertiser_link, :message, 1, "google.analytics.admin.v1alpha.DisplayVideo360AdvertiserLink"
    end
    add_message "google.analytics.admin.v1alpha.CancelDisplayVideo360AdvertiserLinkProposalRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.CreateCustomDimensionRequest" do
      optional :parent, :string, 1
      optional :custom_dimension, :message, 2, "google.analytics.admin.v1alpha.CustomDimension"
    end
    add_message "google.analytics.admin.v1alpha.UpdateCustomDimensionRequest" do
      optional :custom_dimension, :message, 1, "google.analytics.admin.v1alpha.CustomDimension"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.ListCustomDimensionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListCustomDimensionsResponse" do
      repeated :custom_dimensions, :message, 1, "google.analytics.admin.v1alpha.CustomDimension"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.ArchiveCustomDimensionRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.GetCustomDimensionRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.CreateCustomMetricRequest" do
      optional :parent, :string, 1
      optional :custom_metric, :message, 2, "google.analytics.admin.v1alpha.CustomMetric"
    end
    add_message "google.analytics.admin.v1alpha.UpdateCustomMetricRequest" do
      optional :custom_metric, :message, 1, "google.analytics.admin.v1alpha.CustomMetric"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.ListCustomMetricsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListCustomMetricsResponse" do
      repeated :custom_metrics, :message, 1, "google.analytics.admin.v1alpha.CustomMetric"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.ArchiveCustomMetricRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.GetCustomMetricRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.GetDataRetentionSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateDataRetentionSettingsRequest" do
      optional :data_retention_settings, :message, 1, "google.analytics.admin.v1alpha.DataRetentionSettings"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.CreateDataStreamRequest" do
      optional :parent, :string, 1
      optional :data_stream, :message, 2, "google.analytics.admin.v1alpha.DataStream"
    end
    add_message "google.analytics.admin.v1alpha.DeleteDataStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateDataStreamRequest" do
      optional :data_stream, :message, 1, "google.analytics.admin.v1alpha.DataStream"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.ListDataStreamsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListDataStreamsResponse" do
      repeated :data_streams, :message, 1, "google.analytics.admin.v1alpha.DataStream"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.GetDataStreamRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.GetAudienceRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.ListAudiencesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.analytics.admin.v1alpha.ListAudiencesResponse" do
      repeated :audiences, :message, 1, "google.analytics.admin.v1alpha.Audience"
      optional :next_page_token, :string, 2
    end
    add_message "google.analytics.admin.v1alpha.CreateAudienceRequest" do
      optional :parent, :string, 1
      optional :audience, :message, 2, "google.analytics.admin.v1alpha.Audience"
    end
    add_message "google.analytics.admin.v1alpha.UpdateAudienceRequest" do
      optional :audience, :message, 1, "google.analytics.admin.v1alpha.Audience"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.analytics.admin.v1alpha.ArchiveAudienceRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.GetAttributionSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.admin.v1alpha.UpdateAttributionSettingsRequest" do
      optional :attribution_settings, :message, 1, "google.analytics.admin.v1alpha.AttributionSettings"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
  end
end

module Google
  module Analytics
    module Admin
      module V1alpha
        RunAccessReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.RunAccessReportRequest").msgclass
        RunAccessReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.RunAccessReportResponse").msgclass
        GetAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetAccountRequest").msgclass
        ListAccountsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAccountsRequest").msgclass
        ListAccountsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAccountsResponse").msgclass
        DeleteAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteAccountRequest").msgclass
        UpdateAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateAccountRequest").msgclass
        ProvisionAccountTicketRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ProvisionAccountTicketRequest").msgclass
        ProvisionAccountTicketResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ProvisionAccountTicketResponse").msgclass
        GetPropertyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetPropertyRequest").msgclass
        ListPropertiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListPropertiesRequest").msgclass
        ListPropertiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListPropertiesResponse").msgclass
        UpdatePropertyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdatePropertyRequest").msgclass
        CreatePropertyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreatePropertyRequest").msgclass
        DeletePropertyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeletePropertyRequest").msgclass
        GetUserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetUserLinkRequest").msgclass
        BatchGetUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchGetUserLinksRequest").msgclass
        BatchGetUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchGetUserLinksResponse").msgclass
        ListUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListUserLinksRequest").msgclass
        ListUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListUserLinksResponse").msgclass
        AuditUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AuditUserLinksRequest").msgclass
        AuditUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AuditUserLinksResponse").msgclass
        CreateUserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateUserLinkRequest").msgclass
        BatchCreateUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchCreateUserLinksRequest").msgclass
        BatchCreateUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchCreateUserLinksResponse").msgclass
        UpdateUserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateUserLinkRequest").msgclass
        BatchUpdateUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchUpdateUserLinksRequest").msgclass
        BatchUpdateUserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchUpdateUserLinksResponse").msgclass
        DeleteUserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteUserLinkRequest").msgclass
        BatchDeleteUserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.BatchDeleteUserLinksRequest").msgclass
        CreateFirebaseLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateFirebaseLinkRequest").msgclass
        DeleteFirebaseLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteFirebaseLinkRequest").msgclass
        ListFirebaseLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListFirebaseLinksRequest").msgclass
        ListFirebaseLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListFirebaseLinksResponse").msgclass
        GetGlobalSiteTagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetGlobalSiteTagRequest").msgclass
        CreateGoogleAdsLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateGoogleAdsLinkRequest").msgclass
        UpdateGoogleAdsLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateGoogleAdsLinkRequest").msgclass
        DeleteGoogleAdsLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteGoogleAdsLinkRequest").msgclass
        ListGoogleAdsLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListGoogleAdsLinksRequest").msgclass
        ListGoogleAdsLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListGoogleAdsLinksResponse").msgclass
        GetDataSharingSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetDataSharingSettingsRequest").msgclass
        ListAccountSummariesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAccountSummariesRequest").msgclass
        ListAccountSummariesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAccountSummariesResponse").msgclass
        AcknowledgeUserDataCollectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AcknowledgeUserDataCollectionRequest").msgclass
        AcknowledgeUserDataCollectionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AcknowledgeUserDataCollectionResponse").msgclass
        SearchChangeHistoryEventsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.SearchChangeHistoryEventsRequest").msgclass
        SearchChangeHistoryEventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.SearchChangeHistoryEventsResponse").msgclass
        GetMeasurementProtocolSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetMeasurementProtocolSecretRequest").msgclass
        CreateMeasurementProtocolSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateMeasurementProtocolSecretRequest").msgclass
        DeleteMeasurementProtocolSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteMeasurementProtocolSecretRequest").msgclass
        UpdateMeasurementProtocolSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateMeasurementProtocolSecretRequest").msgclass
        ListMeasurementProtocolSecretsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListMeasurementProtocolSecretsRequest").msgclass
        ListMeasurementProtocolSecretsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListMeasurementProtocolSecretsResponse").msgclass
        GetGoogleSignalsSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetGoogleSignalsSettingsRequest").msgclass
        UpdateGoogleSignalsSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateGoogleSignalsSettingsRequest").msgclass
        CreateConversionEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateConversionEventRequest").msgclass
        GetConversionEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetConversionEventRequest").msgclass
        DeleteConversionEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteConversionEventRequest").msgclass
        ListConversionEventsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListConversionEventsRequest").msgclass
        ListConversionEventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListConversionEventsResponse").msgclass
        GetDisplayVideo360AdvertiserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetDisplayVideo360AdvertiserLinkRequest").msgclass
        ListDisplayVideo360AdvertiserLinksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListDisplayVideo360AdvertiserLinksRequest").msgclass
        ListDisplayVideo360AdvertiserLinksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListDisplayVideo360AdvertiserLinksResponse").msgclass
        CreateDisplayVideo360AdvertiserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateDisplayVideo360AdvertiserLinkRequest").msgclass
        DeleteDisplayVideo360AdvertiserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteDisplayVideo360AdvertiserLinkRequest").msgclass
        UpdateDisplayVideo360AdvertiserLinkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateDisplayVideo360AdvertiserLinkRequest").msgclass
        GetDisplayVideo360AdvertiserLinkProposalRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetDisplayVideo360AdvertiserLinkProposalRequest").msgclass
        ListDisplayVideo360AdvertiserLinkProposalsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListDisplayVideo360AdvertiserLinkProposalsRequest").msgclass
        ListDisplayVideo360AdvertiserLinkProposalsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListDisplayVideo360AdvertiserLinkProposalsResponse").msgclass
        CreateDisplayVideo360AdvertiserLinkProposalRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateDisplayVideo360AdvertiserLinkProposalRequest").msgclass
        DeleteDisplayVideo360AdvertiserLinkProposalRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteDisplayVideo360AdvertiserLinkProposalRequest").msgclass
        ApproveDisplayVideo360AdvertiserLinkProposalRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ApproveDisplayVideo360AdvertiserLinkProposalRequest").msgclass
        ApproveDisplayVideo360AdvertiserLinkProposalResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ApproveDisplayVideo360AdvertiserLinkProposalResponse").msgclass
        CancelDisplayVideo360AdvertiserLinkProposalRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CancelDisplayVideo360AdvertiserLinkProposalRequest").msgclass
        CreateCustomDimensionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateCustomDimensionRequest").msgclass
        UpdateCustomDimensionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateCustomDimensionRequest").msgclass
        ListCustomDimensionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListCustomDimensionsRequest").msgclass
        ListCustomDimensionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListCustomDimensionsResponse").msgclass
        ArchiveCustomDimensionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ArchiveCustomDimensionRequest").msgclass
        GetCustomDimensionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetCustomDimensionRequest").msgclass
        CreateCustomMetricRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateCustomMetricRequest").msgclass
        UpdateCustomMetricRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateCustomMetricRequest").msgclass
        ListCustomMetricsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListCustomMetricsRequest").msgclass
        ListCustomMetricsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListCustomMetricsResponse").msgclass
        ArchiveCustomMetricRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ArchiveCustomMetricRequest").msgclass
        GetCustomMetricRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetCustomMetricRequest").msgclass
        GetDataRetentionSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetDataRetentionSettingsRequest").msgclass
        UpdateDataRetentionSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateDataRetentionSettingsRequest").msgclass
        CreateDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateDataStreamRequest").msgclass
        DeleteDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.DeleteDataStreamRequest").msgclass
        UpdateDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateDataStreamRequest").msgclass
        ListDataStreamsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListDataStreamsRequest").msgclass
        ListDataStreamsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListDataStreamsResponse").msgclass
        GetDataStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetDataStreamRequest").msgclass
        GetAudienceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetAudienceRequest").msgclass
        ListAudiencesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAudiencesRequest").msgclass
        ListAudiencesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ListAudiencesResponse").msgclass
        CreateAudienceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.CreateAudienceRequest").msgclass
        UpdateAudienceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateAudienceRequest").msgclass
        ArchiveAudienceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.ArchiveAudienceRequest").msgclass
        GetAttributionSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.GetAttributionSettingsRequest").msgclass
        UpdateAttributionSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.UpdateAttributionSettingsRequest").msgclass
      end
    end
  end
end
