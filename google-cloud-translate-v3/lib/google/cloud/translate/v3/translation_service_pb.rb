# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/translate/v3/translation_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/translate/v3/translation_service.proto", :syntax => :proto3) do
    add_message "google.cloud.translation.v3.TranslateTextGlossaryConfig" do
      optional :glossary, :string, 1
      optional :ignore_case, :bool, 2
    end
    add_message "google.cloud.translation.v3.TranslateTextRequest" do
      repeated :contents, :string, 1
      optional :mime_type, :string, 3
      optional :source_language_code, :string, 4
      optional :target_language_code, :string, 5
      optional :parent, :string, 8
      optional :model, :string, 6
      optional :glossary_config, :message, 7, "google.cloud.translation.v3.TranslateTextGlossaryConfig"
      map :labels, :string, :string, 10
    end
    add_message "google.cloud.translation.v3.TranslateTextResponse" do
      repeated :translations, :message, 1, "google.cloud.translation.v3.Translation"
      repeated :glossary_translations, :message, 3, "google.cloud.translation.v3.Translation"
    end
    add_message "google.cloud.translation.v3.Translation" do
      optional :translated_text, :string, 1
      optional :model, :string, 2
      optional :detected_language_code, :string, 4
      optional :glossary_config, :message, 3, "google.cloud.translation.v3.TranslateTextGlossaryConfig"
    end
    add_message "google.cloud.translation.v3.DetectLanguageRequest" do
      optional :parent, :string, 5
      optional :model, :string, 4
      optional :mime_type, :string, 3
      map :labels, :string, :string, 6
      oneof :source do
        optional :content, :string, 1
      end
    end
    add_message "google.cloud.translation.v3.DetectedLanguage" do
      optional :language_code, :string, 1
      optional :confidence, :float, 2
    end
    add_message "google.cloud.translation.v3.DetectLanguageResponse" do
      repeated :languages, :message, 1, "google.cloud.translation.v3.DetectedLanguage"
    end
    add_message "google.cloud.translation.v3.GetSupportedLanguagesRequest" do
      optional :parent, :string, 3
      optional :display_language_code, :string, 1
      optional :model, :string, 2
    end
    add_message "google.cloud.translation.v3.SupportedLanguages" do
      repeated :languages, :message, 1, "google.cloud.translation.v3.SupportedLanguage"
    end
    add_message "google.cloud.translation.v3.SupportedLanguage" do
      optional :language_code, :string, 1
      optional :display_name, :string, 2
      optional :support_source, :bool, 3
      optional :support_target, :bool, 4
    end
    add_message "google.cloud.translation.v3.GcsSource" do
      optional :input_uri, :string, 1
    end
    add_message "google.cloud.translation.v3.InputConfig" do
      optional :mime_type, :string, 1
      oneof :source do
        optional :gcs_source, :message, 2, "google.cloud.translation.v3.GcsSource"
      end
    end
    add_message "google.cloud.translation.v3.GcsDestination" do
      optional :output_uri_prefix, :string, 1
    end
    add_message "google.cloud.translation.v3.OutputConfig" do
      oneof :destination do
        optional :gcs_destination, :message, 1, "google.cloud.translation.v3.GcsDestination"
      end
    end
    add_message "google.cloud.translation.v3.DocumentInputConfig" do
      optional :mime_type, :string, 4
      oneof :source do
        optional :content, :bytes, 1
        optional :gcs_source, :message, 2, "google.cloud.translation.v3.GcsSource"
      end
    end
    add_message "google.cloud.translation.v3.DocumentOutputConfig" do
      optional :mime_type, :string, 3
      oneof :destination do
        optional :gcs_destination, :message, 1, "google.cloud.translation.v3.GcsDestination"
      end
    end
    add_message "google.cloud.translation.v3.TranslateDocumentRequest" do
      optional :parent, :string, 1
      optional :source_language_code, :string, 2
      optional :target_language_code, :string, 3
      optional :document_input_config, :message, 4, "google.cloud.translation.v3.DocumentInputConfig"
      optional :document_output_config, :message, 5, "google.cloud.translation.v3.DocumentOutputConfig"
      optional :model, :string, 6
      optional :glossary_config, :message, 7, "google.cloud.translation.v3.TranslateTextGlossaryConfig"
      map :labels, :string, :string, 8
    end
    add_message "google.cloud.translation.v3.DocumentTranslation" do
      repeated :byte_stream_outputs, :bytes, 1
      optional :mime_type, :string, 2
      optional :detected_language_code, :string, 3
    end
    add_message "google.cloud.translation.v3.TranslateDocumentResponse" do
      optional :document_translation, :message, 1, "google.cloud.translation.v3.DocumentTranslation"
      optional :glossary_document_translation, :message, 2, "google.cloud.translation.v3.DocumentTranslation"
      optional :model, :string, 3
      optional :glossary_config, :message, 4, "google.cloud.translation.v3.TranslateTextGlossaryConfig"
    end
    add_message "google.cloud.translation.v3.BatchTranslateTextRequest" do
      optional :parent, :string, 1
      optional :source_language_code, :string, 2
      repeated :target_language_codes, :string, 3
      map :models, :string, :string, 4
      repeated :input_configs, :message, 5, "google.cloud.translation.v3.InputConfig"
      optional :output_config, :message, 6, "google.cloud.translation.v3.OutputConfig"
      map :glossaries, :string, :message, 7, "google.cloud.translation.v3.TranslateTextGlossaryConfig"
      map :labels, :string, :string, 9
    end
    add_message "google.cloud.translation.v3.BatchTranslateMetadata" do
      optional :state, :enum, 1, "google.cloud.translation.v3.BatchTranslateMetadata.State"
      optional :translated_characters, :int64, 2
      optional :failed_characters, :int64, 3
      optional :total_characters, :int64, 4
      optional :submit_time, :message, 5, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.translation.v3.BatchTranslateMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
      value :CANCELLING, 4
      value :CANCELLED, 5
    end
    add_message "google.cloud.translation.v3.BatchTranslateResponse" do
      optional :total_characters, :int64, 1
      optional :translated_characters, :int64, 2
      optional :failed_characters, :int64, 3
      optional :submit_time, :message, 4, "google.protobuf.Timestamp"
      optional :end_time, :message, 5, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.translation.v3.GlossaryInputConfig" do
      oneof :source do
        optional :gcs_source, :message, 1, "google.cloud.translation.v3.GcsSource"
      end
    end
    add_message "google.cloud.translation.v3.Glossary" do
      optional :name, :string, 1
      optional :input_config, :message, 5, "google.cloud.translation.v3.GlossaryInputConfig"
      optional :entry_count, :int32, 6
      optional :submit_time, :message, 7, "google.protobuf.Timestamp"
      optional :end_time, :message, 8, "google.protobuf.Timestamp"
      oneof :languages do
        optional :language_pair, :message, 3, "google.cloud.translation.v3.Glossary.LanguageCodePair"
        optional :language_codes_set, :message, 4, "google.cloud.translation.v3.Glossary.LanguageCodesSet"
      end
    end
    add_message "google.cloud.translation.v3.Glossary.LanguageCodePair" do
      optional :source_language_code, :string, 1
      optional :target_language_code, :string, 2
    end
    add_message "google.cloud.translation.v3.Glossary.LanguageCodesSet" do
      repeated :language_codes, :string, 1
    end
    add_message "google.cloud.translation.v3.CreateGlossaryRequest" do
      optional :parent, :string, 1
      optional :glossary, :message, 2, "google.cloud.translation.v3.Glossary"
    end
    add_message "google.cloud.translation.v3.GetGlossaryRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.translation.v3.DeleteGlossaryRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.translation.v3.ListGlossariesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.translation.v3.ListGlossariesResponse" do
      repeated :glossaries, :message, 1, "google.cloud.translation.v3.Glossary"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.translation.v3.CreateGlossaryMetadata" do
      optional :name, :string, 1
      optional :state, :enum, 2, "google.cloud.translation.v3.CreateGlossaryMetadata.State"
      optional :submit_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.translation.v3.CreateGlossaryMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
      value :CANCELLING, 4
      value :CANCELLED, 5
    end
    add_message "google.cloud.translation.v3.DeleteGlossaryMetadata" do
      optional :name, :string, 1
      optional :state, :enum, 2, "google.cloud.translation.v3.DeleteGlossaryMetadata.State"
      optional :submit_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.translation.v3.DeleteGlossaryMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
      value :CANCELLING, 4
      value :CANCELLED, 5
    end
    add_message "google.cloud.translation.v3.DeleteGlossaryResponse" do
      optional :name, :string, 1
      optional :submit_time, :message, 2, "google.protobuf.Timestamp"
      optional :end_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.translation.v3.BatchTranslateDocumentRequest" do
      optional :parent, :string, 1
      optional :source_language_code, :string, 2
      repeated :target_language_codes, :string, 3
      repeated :input_configs, :message, 4, "google.cloud.translation.v3.BatchDocumentInputConfig"
      optional :output_config, :message, 5, "google.cloud.translation.v3.BatchDocumentOutputConfig"
      map :models, :string, :string, 6
      map :glossaries, :string, :message, 7, "google.cloud.translation.v3.TranslateTextGlossaryConfig"
      map :format_conversions, :string, :string, 8
    end
    add_message "google.cloud.translation.v3.BatchDocumentInputConfig" do
      oneof :source do
        optional :gcs_source, :message, 1, "google.cloud.translation.v3.GcsSource"
      end
    end
    add_message "google.cloud.translation.v3.BatchDocumentOutputConfig" do
      oneof :destination do
        optional :gcs_destination, :message, 1, "google.cloud.translation.v3.GcsDestination"
      end
    end
    add_message "google.cloud.translation.v3.BatchTranslateDocumentResponse" do
      optional :total_pages, :int64, 1
      optional :translated_pages, :int64, 2
      optional :failed_pages, :int64, 3
      optional :total_billable_pages, :int64, 4
      optional :total_characters, :int64, 5
      optional :translated_characters, :int64, 6
      optional :failed_characters, :int64, 7
      optional :total_billable_characters, :int64, 8
      optional :submit_time, :message, 9, "google.protobuf.Timestamp"
      optional :end_time, :message, 10, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.translation.v3.BatchTranslateDocumentMetadata" do
      optional :state, :enum, 1, "google.cloud.translation.v3.BatchTranslateDocumentMetadata.State"
      optional :total_pages, :int64, 2
      optional :translated_pages, :int64, 3
      optional :failed_pages, :int64, 4
      optional :total_billable_pages, :int64, 5
      optional :total_characters, :int64, 6
      optional :translated_characters, :int64, 7
      optional :failed_characters, :int64, 8
      optional :total_billable_characters, :int64, 9
      optional :submit_time, :message, 10, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.translation.v3.BatchTranslateDocumentMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
      value :CANCELLING, 4
      value :CANCELLED, 5
    end
  end
end

module Google
  module Cloud
    module Translate
      module V3
        TranslateTextGlossaryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateTextGlossaryConfig").msgclass
        TranslateTextRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateTextRequest").msgclass
        TranslateTextResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateTextResponse").msgclass
        Translation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.Translation").msgclass
        DetectLanguageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DetectLanguageRequest").msgclass
        DetectedLanguage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DetectedLanguage").msgclass
        DetectLanguageResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DetectLanguageResponse").msgclass
        GetSupportedLanguagesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GetSupportedLanguagesRequest").msgclass
        SupportedLanguages = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.SupportedLanguages").msgclass
        SupportedLanguage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.SupportedLanguage").msgclass
        GcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GcsSource").msgclass
        InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.InputConfig").msgclass
        GcsDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GcsDestination").msgclass
        OutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.OutputConfig").msgclass
        DocumentInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DocumentInputConfig").msgclass
        DocumentOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DocumentOutputConfig").msgclass
        TranslateDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateDocumentRequest").msgclass
        DocumentTranslation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DocumentTranslation").msgclass
        TranslateDocumentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.TranslateDocumentResponse").msgclass
        BatchTranslateTextRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateTextRequest").msgclass
        BatchTranslateMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateMetadata").msgclass
        BatchTranslateMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateMetadata.State").enummodule
        BatchTranslateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateResponse").msgclass
        GlossaryInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GlossaryInputConfig").msgclass
        Glossary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.Glossary").msgclass
        Glossary::LanguageCodePair = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.Glossary.LanguageCodePair").msgclass
        Glossary::LanguageCodesSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.Glossary.LanguageCodesSet").msgclass
        CreateGlossaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.CreateGlossaryRequest").msgclass
        GetGlossaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.GetGlossaryRequest").msgclass
        DeleteGlossaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteGlossaryRequest").msgclass
        ListGlossariesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListGlossariesRequest").msgclass
        ListGlossariesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.ListGlossariesResponse").msgclass
        CreateGlossaryMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.CreateGlossaryMetadata").msgclass
        CreateGlossaryMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.CreateGlossaryMetadata.State").enummodule
        DeleteGlossaryMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteGlossaryMetadata").msgclass
        DeleteGlossaryMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteGlossaryMetadata.State").enummodule
        DeleteGlossaryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.DeleteGlossaryResponse").msgclass
        BatchTranslateDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateDocumentRequest").msgclass
        BatchDocumentInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchDocumentInputConfig").msgclass
        BatchDocumentOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchDocumentOutputConfig").msgclass
        BatchTranslateDocumentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateDocumentResponse").msgclass
        BatchTranslateDocumentMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateDocumentMetadata").msgclass
        BatchTranslateDocumentMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.translation.v3.BatchTranslateDocumentMetadata.State").enummodule
      end
    end
  end
end
