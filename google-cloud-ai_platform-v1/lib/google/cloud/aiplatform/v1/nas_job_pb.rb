# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/nas_job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/custom_job_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/job_state_pb'
require 'google/cloud/aiplatform/v1/study_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n(google/cloud/aiplatform/v1/nas_job.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a+google/cloud/aiplatform/v1/custom_job.proto\x1a\x30google/cloud/aiplatform/v1/encryption_spec.proto\x1a*google/cloud/aiplatform/v1/job_state.proto\x1a&google/cloud/aiplatform/v1/study.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xf5\x06\n\x06NasJob\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x41\n\x0cnas_job_spec\x18\x04 \x01(\x0b\x32&.google.cloud.aiplatform.v1.NasJobSpecB\x03\xe0\x41\x02\x12\x45\n\x0enas_job_output\x18\x05 \x01(\x0b\x32(.google.cloud.aiplatform.v1.NasJobOutputB\x03\xe0\x41\x03\x12\x38\n\x05state\x18\x06 \x01(\x0e\x32$.google.cloud.aiplatform.v1.JobStateB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x33\n\nstart_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12&\n\x05\x65rror\x18\x0b \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12>\n\x06labels\x18\x0c \x03(\x0b\x32..google.cloud.aiplatform.v1.NasJob.LabelsEntry\x12\x43\n\x0f\x65ncryption_spec\x18\r \x01(\x0b\x32*.google.cloud.aiplatform.v1.EncryptionSpec\x12/\n enable_restricted_image_training\x18\x0e \x01(\x08\x42\x05\x18\x01\xe0\x41\x01\x12\x1a\n\rsatisfies_pzs\x18\x0f \x01(\x08\x42\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzi\x18\x10 \x01(\x08\x42\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:`\xea\x41]\n aiplatform.googleapis.com/NasJob\x12\x39projects/{project}/locations/{location}/nasJobs/{nas_job}\"\xbd\x02\n\x0eNasTrialDetail\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x12\n\nparameters\x18\x02 \x01(\t\x12:\n\x0csearch_trial\x18\x03 \x01(\x0b\x32$.google.cloud.aiplatform.v1.NasTrial\x12\x39\n\x0btrain_trial\x18\x04 \x01(\x0b\x32$.google.cloud.aiplatform.v1.NasTrial:\x8c\x01\xea\x41\x88\x01\n(aiplatform.googleapis.com/NasTrialDetail\x12\\projects/{project}/locations/{location}/nasJobs/{nas_job}/nasTrialDetails/{nas_trial_detail}\"\xa5\n\n\nNasJobSpec\x12\x64\n\x1amulti_trial_algorithm_spec\x18\x02 \x01(\x0b\x32>.google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpecH\x00\x12\x19\n\x11resume_nas_job_id\x18\x03 \x01(\t\x12\x19\n\x11search_space_spec\x18\x01 \x01(\t\x1a\xe4\x08\n\x17MultiTrialAlgorithmSpec\x12q\n\x15multi_trial_algorithm\x18\x01 \x01(\x0e\x32R.google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MultiTrialAlgorithm\x12Y\n\x06metric\x18\x02 \x01(\x0b\x32I.google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec\x12n\n\x11search_trial_spec\x18\x03 \x01(\x0b\x32N.google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.SearchTrialSpecB\x03\xe0\x41\x02\x12g\n\x10train_trial_spec\x18\x04 \x01(\x0b\x32M.google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.TrainTrialSpec\x1a\xce\x01\n\nMetricSpec\x12\x16\n\tmetric_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x65\n\x04goal\x18\x02 \x01(\x0e\x32R.google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec.GoalTypeB\x03\xe0\x41\x02\"A\n\x08GoalType\x12\x19\n\x15GOAL_TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08MAXIMIZE\x10\x01\x12\x0c\n\x08MINIMIZE\x10\x02\x1a\xc5\x01\n\x0fSearchTrialSpec\x12M\n\x15search_trial_job_spec\x18\x01 \x01(\x0b\x32).google.cloud.aiplatform.v1.CustomJobSpecB\x03\xe0\x41\x02\x12\x1c\n\x0fmax_trial_count\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\x12%\n\x18max_parallel_trial_count\x18\x03 \x01(\x05\x42\x03\xe0\x41\x02\x12\x1e\n\x16max_failed_trial_count\x18\x04 \x01(\x05\x1a\x9d\x01\n\x0eTrainTrialSpec\x12L\n\x14train_trial_job_spec\x18\x01 \x01(\x0b\x32).google.cloud.aiplatform.v1.CustomJobSpecB\x03\xe0\x41\x02\x12%\n\x18max_parallel_trial_count\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\x12\x16\n\tfrequency\x18\x03 \x01(\x05\x42\x03\xe0\x41\x02\"i\n\x13MultiTrialAlgorithm\x12%\n!MULTI_TRIAL_ALGORITHM_UNSPECIFIED\x10\x00\x12\x1a\n\x16REINFORCEMENT_LEARNING\x10\x01\x12\x0f\n\x0bGRID_SEARCH\x10\x02\x42\x14\n\x12nas_algorithm_spec\"\x98\x02\n\x0cNasJobOutput\x12\x63\n\x16multi_trial_job_output\x18\x01 \x01(\x0b\x32<.google.cloud.aiplatform.v1.NasJobOutput.MultiTrialJobOutputB\x03\xe0\x41\x03H\x00\x1a\x98\x01\n\x13MultiTrialJobOutput\x12@\n\rsearch_trials\x18\x01 \x03(\x0b\x32$.google.cloud.aiplatform.v1.NasTrialB\x03\xe0\x41\x03\x12?\n\x0ctrain_trials\x18\x02 \x03(\x0b\x32$.google.cloud.aiplatform.v1.NasTrialB\x03\xe0\x41\x03\x42\x08\n\x06output\"\xf4\x02\n\x08NasTrial\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12>\n\x05state\x18\x02 \x01(\x0e\x32*.google.cloud.aiplatform.v1.NasTrial.StateB\x03\xe0\x41\x03\x12G\n\x11\x66inal_measurement\x18\x03 \x01(\x0b\x32\'.google.cloud.aiplatform.v1.MeasurementB\x03\xe0\x41\x03\x12\x33\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"f\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\r\n\tREQUESTED\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0c\n\x08STOPPING\x10\x03\x12\r\n\tSUCCEEDED\x10\x04\x12\x0e\n\nINFEASIBLE\x10\x05\x42\xc9\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x0bNasJobProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.cloud.aiplatform.v1.EncryptionSpec", "google/cloud/aiplatform/v1/encryption_spec.proto"],
    ["google.cloud.aiplatform.v1.CustomJobSpec", "google/cloud/aiplatform/v1/custom_job.proto"],
    ["google.cloud.aiplatform.v1.Measurement", "google/cloud/aiplatform/v1/study.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module AIPlatform
      module V1
        NasJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJob").msgclass
        NasTrialDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasTrialDetail").msgclass
        NasJobSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec::MetricSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec::MetricSpec::GoalType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec.GoalType").enummodule
        NasJobSpec::MultiTrialAlgorithmSpec::SearchTrialSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.SearchTrialSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec::TrainTrialSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.TrainTrialSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec::MultiTrialAlgorithm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MultiTrialAlgorithm").enummodule
        NasJobOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobOutput").msgclass
        NasJobOutput::MultiTrialJobOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobOutput.MultiTrialJobOutput").msgclass
        NasTrial = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasTrial").msgclass
        NasTrial::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasTrial.State").enummodule
      end
    end
  end
end
