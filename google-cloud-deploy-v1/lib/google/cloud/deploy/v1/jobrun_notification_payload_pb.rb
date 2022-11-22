# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/deploy/v1/jobrun_notification_payload.proto

require 'google/protobuf'

require 'google/cloud/deploy/v1/log_enums_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/deploy/v1/jobrun_notification_payload.proto", :syntax => :proto3) do
    add_message "google.cloud.deploy.v1.JobRunNotificationEvent" do
      optional :message, :string, 1
      optional :job_run, :string, 2
      optional :pipeline_uid, :string, 3
      optional :release_uid, :string, 4
      optional :rollout_uid, :string, 5
      optional :target_id, :string, 6
      optional :type, :enum, 7, "google.cloud.deploy.v1.Type"
    end
  end
end

module Google
  module Cloud
    module Deploy
      module V1
        JobRunNotificationEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.JobRunNotificationEvent").msgclass
      end
    end
  end
end
