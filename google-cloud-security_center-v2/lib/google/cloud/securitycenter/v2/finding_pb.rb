# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v2/finding.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/securitycenter/v2/access_pb'
require 'google/cloud/securitycenter/v2/application_pb'
require 'google/cloud/securitycenter/v2/attack_exposure_pb'
require 'google/cloud/securitycenter/v2/backup_disaster_recovery_pb'
require 'google/cloud/securitycenter/v2/cloud_dlp_data_profile_pb'
require 'google/cloud/securitycenter/v2/cloud_dlp_inspection_pb'
require 'google/cloud/securitycenter/v2/compliance_pb'
require 'google/cloud/securitycenter/v2/connection_pb'
require 'google/cloud/securitycenter/v2/contact_details_pb'
require 'google/cloud/securitycenter/v2/container_pb'
require 'google/cloud/securitycenter/v2/database_pb'
require 'google/cloud/securitycenter/v2/exfiltration_pb'
require 'google/cloud/securitycenter/v2/external_system_pb'
require 'google/cloud/securitycenter/v2/file_pb'
require 'google/cloud/securitycenter/v2/group_membership_pb'
require 'google/cloud/securitycenter/v2/iam_binding_pb'
require 'google/cloud/securitycenter/v2/indicator_pb'
require 'google/cloud/securitycenter/v2/kernel_rootkit_pb'
require 'google/cloud/securitycenter/v2/kubernetes_pb'
require 'google/cloud/securitycenter/v2/load_balancer_pb'
require 'google/cloud/securitycenter/v2/log_entry_pb'
require 'google/cloud/securitycenter/v2/mitre_attack_pb'
require 'google/cloud/securitycenter/v2/org_policy_pb'
require 'google/cloud/securitycenter/v2/process_pb'
require 'google/cloud/securitycenter/v2/security_marks_pb'
require 'google/cloud/securitycenter/v2/security_posture_pb'
require 'google/cloud/securitycenter/v2/toxic_combination_pb'
require 'google/cloud/securitycenter/v2/vulnerability_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/cloud/securitycenter/v2/finding.proto\x12\x1egoogle.cloud.securitycenter.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a+google/cloud/securitycenter/v2/access.proto\x1a\x30google/cloud/securitycenter/v2/application.proto\x1a\x34google/cloud/securitycenter/v2/attack_exposure.proto\x1a=google/cloud/securitycenter/v2/backup_disaster_recovery.proto\x1a;google/cloud/securitycenter/v2/cloud_dlp_data_profile.proto\x1a\x39google/cloud/securitycenter/v2/cloud_dlp_inspection.proto\x1a/google/cloud/securitycenter/v2/compliance.proto\x1a/google/cloud/securitycenter/v2/connection.proto\x1a\x34google/cloud/securitycenter/v2/contact_details.proto\x1a.google/cloud/securitycenter/v2/container.proto\x1a-google/cloud/securitycenter/v2/database.proto\x1a\x31google/cloud/securitycenter/v2/exfiltration.proto\x1a\x34google/cloud/securitycenter/v2/external_system.proto\x1a)google/cloud/securitycenter/v2/file.proto\x1a\x35google/cloud/securitycenter/v2/group_membership.proto\x1a\x30google/cloud/securitycenter/v2/iam_binding.proto\x1a.google/cloud/securitycenter/v2/indicator.proto\x1a\x33google/cloud/securitycenter/v2/kernel_rootkit.proto\x1a/google/cloud/securitycenter/v2/kubernetes.proto\x1a\x32google/cloud/securitycenter/v2/load_balancer.proto\x1a.google/cloud/securitycenter/v2/log_entry.proto\x1a\x31google/cloud/securitycenter/v2/mitre_attack.proto\x1a/google/cloud/securitycenter/v2/org_policy.proto\x1a,google/cloud/securitycenter/v2/process.proto\x1a\x33google/cloud/securitycenter/v2/security_marks.proto\x1a\x35google/cloud/securitycenter/v2/security_posture.proto\x1a\x36google/cloud/securitycenter/v2/toxic_combination.proto\x1a\x32google/cloud/securitycenter/v2/vulnerability.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb6\x1e\n\x07\x46inding\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x1b\n\x0e\x63\x61nonical_name\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x0e\n\x06parent\x18\x03 \x01(\t\x12\x1a\n\rresource_name\x18\x04 \x01(\tB\x03\xe0\x41\x05\x12\x41\n\x05state\x18\x06 \x01(\x0e\x32-.google.cloud.securitycenter.v2.Finding.StateB\x03\xe0\x41\x03\x12\x15\n\x08\x63\x61tegory\x18\x07 \x01(\tB\x03\xe0\x41\x05\x12\x14\n\x0c\x65xternal_uri\x18\x08 \x01(\t\x12X\n\x11source_properties\x18\t \x03(\x0b\x32=.google.cloud.securitycenter.v2.Finding.SourcePropertiesEntry\x12J\n\x0esecurity_marks\x18\n \x01(\x0b\x32-.google.cloud.securitycenter.v2.SecurityMarksB\x03\xe0\x41\x03\x12.\n\nevent_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x34\n\x0b\x63reate_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x42\n\x08severity\x18\x0e \x01(\x0e\x32\x30.google.cloud.securitycenter.v2.Finding.Severity\x12:\n\x04mute\x18\x0f \x01(\x0e\x32,.google.cloud.securitycenter.v2.Finding.Mute\x12K\n\rfinding_class\x18\x10 \x01(\x0e\x32\x34.google.cloud.securitycenter.v2.Finding.FindingClass\x12<\n\tindicator\x18\x11 \x01(\x0b\x32).google.cloud.securitycenter.v2.Indicator\x12\x44\n\rvulnerability\x18\x12 \x01(\x0b\x32-.google.cloud.securitycenter.v2.Vulnerability\x12\x39\n\x10mute_update_time\x18\x13 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12[\n\x10\x65xternal_systems\x18\x14 \x03(\x0b\x32<.google.cloud.securitycenter.v2.Finding.ExternalSystemsEntryB\x03\xe0\x41\x03\x12\x41\n\x0cmitre_attack\x18\x15 \x01(\x0b\x32+.google.cloud.securitycenter.v2.MitreAttack\x12\x36\n\x06\x61\x63\x63\x65ss\x18\x16 \x01(\x0b\x32&.google.cloud.securitycenter.v2.Access\x12?\n\x0b\x63onnections\x18\x17 \x03(\x0b\x32*.google.cloud.securitycenter.v2.Connection\x12\x16\n\x0emute_initiator\x18\x18 \x01(\t\x12:\n\tprocesses\x18\x19 \x03(\x0b\x32\'.google.cloud.securitycenter.v2.Process\x12L\n\x08\x63ontacts\x18\x1a \x03(\x0b\x32\x35.google.cloud.securitycenter.v2.Finding.ContactsEntryB\x03\xe0\x41\x03\x12?\n\x0b\x63ompliances\x18\x1b \x03(\x0b\x32*.google.cloud.securitycenter.v2.Compliance\x12 \n\x13parent_display_name\x18\x1d \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x1e \x01(\t\x12\x42\n\x0c\x65xfiltration\x18\x1f \x01(\x0b\x32,.google.cloud.securitycenter.v2.Exfiltration\x12@\n\x0ciam_bindings\x18  \x03(\x0b\x32*.google.cloud.securitycenter.v2.IamBinding\x12\x12\n\nnext_steps\x18! \x01(\t\x12\x13\n\x0bmodule_name\x18\" \x01(\t\x12=\n\ncontainers\x18# \x03(\x0b\x32).google.cloud.securitycenter.v2.Container\x12>\n\nkubernetes\x18$ \x01(\x0b\x32*.google.cloud.securitycenter.v2.Kubernetes\x12:\n\x08\x64\x61tabase\x18% \x01(\x0b\x32(.google.cloud.securitycenter.v2.Database\x12G\n\x0f\x61ttack_exposure\x18& \x01(\x0b\x32..google.cloud.securitycenter.v2.AttackExposure\x12\x33\n\x05\x66iles\x18\' \x03(\x0b\x32$.google.cloud.securitycenter.v2.File\x12P\n\x14\x63loud_dlp_inspection\x18( \x01(\x0b\x32\x32.google.cloud.securitycenter.v2.CloudDlpInspection\x12S\n\x16\x63loud_dlp_data_profile\x18) \x01(\x0b\x32\x33.google.cloud.securitycenter.v2.CloudDlpDataProfile\x12\x45\n\x0ekernel_rootkit\x18* \x01(\x0b\x32-.google.cloud.securitycenter.v2.KernelRootkit\x12?\n\x0corg_policies\x18+ \x03(\x0b\x32).google.cloud.securitycenter.v2.OrgPolicy\x12@\n\x0b\x61pplication\x18- \x01(\x0b\x32+.google.cloud.securitycenter.v2.Application\x12X\n\x18\x62\x61\x63kup_disaster_recovery\x18/ \x01(\x0b\x32\x36.google.cloud.securitycenter.v2.BackupDisasterRecovery\x12I\n\x10security_posture\x18\x30 \x01(\x0b\x32/.google.cloud.securitycenter.v2.SecurityPosture\x12=\n\x0blog_entries\x18\x31 \x03(\x0b\x32(.google.cloud.securitycenter.v2.LogEntry\x12\x44\n\x0eload_balancers\x18\x32 \x03(\x0b\x32,.google.cloud.securitycenter.v2.LoadBalancer\x12K\n\x11toxic_combination\x18\x38 \x01(\x0b\x32\x30.google.cloud.securitycenter.v2.ToxicCombination\x12J\n\x11group_memberships\x18\x39 \x03(\x0b\x32/.google.cloud.securitycenter.v2.GroupMembership\x1aO\n\x15SourcePropertiesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\x1a\x66\n\x14\x45xternalSystemsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12=\n\x05value\x18\x02 \x01(\x0b\x32..google.cloud.securitycenter.v2.ExternalSystem:\x02\x38\x01\x1a_\n\rContactsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12=\n\x05value\x18\x02 \x01(\x0b\x32..google.cloud.securitycenter.v2.ContactDetails:\x02\x38\x01\"8\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\x12\x0c\n\x08INACTIVE\x10\x02\"Q\n\x08Severity\x12\x18\n\x14SEVERITY_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43RITICAL\x10\x01\x12\x08\n\x04HIGH\x10\x02\x12\n\n\x06MEDIUM\x10\x03\x12\x07\n\x03LOW\x10\x04\"C\n\x04Mute\x12\x14\n\x10MUTE_UNSPECIFIED\x10\x00\x12\t\n\x05MUTED\x10\x01\x12\x0b\n\x07UNMUTED\x10\x02\x12\r\n\tUNDEFINED\x10\x03\"\xb0\x01\n\x0c\x46indingClass\x12\x1d\n\x19\x46INDING_CLASS_UNSPECIFIED\x10\x00\x12\n\n\x06THREAT\x10\x01\x12\x11\n\rVULNERABILITY\x10\x02\x12\x14\n\x10MISCONFIGURATION\x10\x03\x12\x0f\n\x0bOBSERVATION\x10\x04\x12\r\n\tSCC_ERROR\x10\x05\x12\x15\n\x11POSTURE_VIOLATION\x10\x06\x12\x15\n\x11TOXIC_COMBINATION\x10\x07:\xdd\x03\xea\x41\xd9\x03\n%securitycenter.googleapis.com/Finding\x12@organizations/{organization}/sources/{source}/findings/{finding}\x12Uorganizations/{organization}/sources/{source}/locations/{location}/findings/{finding}\x12\x34\x66olders/{folder}/sources/{source}/findings/{finding}\x12Ifolders/{folder}/sources/{source}/locations/{location}/findings/{finding}\x12\x36projects/{project}/sources/{source}/findings/{finding}\x12Kprojects/{project}/sources/{source}/locations/{location}/findings/{finding}*\x08\x66indings2\x07\x66indingB\xe6\x01\n\"com.google.cloud.securitycenter.v2B\x0c\x46indingProtoP\x01ZJcloud.google.com/go/securitycenter/apiv2/securitycenterpb;securitycenterpb\xaa\x02\x1eGoogle.Cloud.SecurityCenter.V2\xca\x02\x1eGoogle\\Cloud\\SecurityCenter\\V2\xea\x02!Google::Cloud::SecurityCenter::V2b\x06proto3"

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
    ["google.cloud.securitycenter.v2.SecurityMarks", "google/cloud/securitycenter/v2/security_marks.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.securitycenter.v2.Indicator", "google/cloud/securitycenter/v2/indicator.proto"],
    ["google.cloud.securitycenter.v2.Vulnerability", "google/cloud/securitycenter/v2/vulnerability.proto"],
    ["google.cloud.securitycenter.v2.MitreAttack", "google/cloud/securitycenter/v2/mitre_attack.proto"],
    ["google.cloud.securitycenter.v2.Access", "google/cloud/securitycenter/v2/access.proto"],
    ["google.cloud.securitycenter.v2.Connection", "google/cloud/securitycenter/v2/connection.proto"],
    ["google.cloud.securitycenter.v2.Process", "google/cloud/securitycenter/v2/process.proto"],
    ["google.cloud.securitycenter.v2.Compliance", "google/cloud/securitycenter/v2/compliance.proto"],
    ["google.cloud.securitycenter.v2.Exfiltration", "google/cloud/securitycenter/v2/exfiltration.proto"],
    ["google.cloud.securitycenter.v2.IamBinding", "google/cloud/securitycenter/v2/iam_binding.proto"],
    ["google.cloud.securitycenter.v2.Container", "google/cloud/securitycenter/v2/container.proto"],
    ["google.cloud.securitycenter.v2.Kubernetes", "google/cloud/securitycenter/v2/kubernetes.proto"],
    ["google.cloud.securitycenter.v2.Database", "google/cloud/securitycenter/v2/database.proto"],
    ["google.cloud.securitycenter.v2.AttackExposure", "google/cloud/securitycenter/v2/attack_exposure.proto"],
    ["google.cloud.securitycenter.v2.File", "google/cloud/securitycenter/v2/file.proto"],
    ["google.cloud.securitycenter.v2.CloudDlpInspection", "google/cloud/securitycenter/v2/cloud_dlp_inspection.proto"],
    ["google.cloud.securitycenter.v2.CloudDlpDataProfile", "google/cloud/securitycenter/v2/cloud_dlp_data_profile.proto"],
    ["google.cloud.securitycenter.v2.KernelRootkit", "google/cloud/securitycenter/v2/kernel_rootkit.proto"],
    ["google.cloud.securitycenter.v2.OrgPolicy", "google/cloud/securitycenter/v2/org_policy.proto"],
    ["google.cloud.securitycenter.v2.Application", "google/cloud/securitycenter/v2/application.proto"],
    ["google.cloud.securitycenter.v2.BackupDisasterRecovery", "google/cloud/securitycenter/v2/backup_disaster_recovery.proto"],
    ["google.cloud.securitycenter.v2.SecurityPosture", "google/cloud/securitycenter/v2/security_posture.proto"],
    ["google.cloud.securitycenter.v2.LogEntry", "google/cloud/securitycenter/v2/log_entry.proto"],
    ["google.cloud.securitycenter.v2.LoadBalancer", "google/cloud/securitycenter/v2/load_balancer.proto"],
    ["google.cloud.securitycenter.v2.ToxicCombination", "google/cloud/securitycenter/v2/toxic_combination.proto"],
    ["google.cloud.securitycenter.v2.GroupMembership", "google/cloud/securitycenter/v2/group_membership.proto"],
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.cloud.securitycenter.v2.ExternalSystem", "google/cloud/securitycenter/v2/external_system.proto"],
    ["google.cloud.securitycenter.v2.ContactDetails", "google/cloud/securitycenter/v2/contact_details.proto"],
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
    module SecurityCenter
      module V2
        Finding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v2.Finding").msgclass
        Finding::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v2.Finding.State").enummodule
        Finding::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v2.Finding.Severity").enummodule
        Finding::Mute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v2.Finding.Mute").enummodule
        Finding::FindingClass = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v2.Finding.FindingClass").enummodule
      end
    end
  end
end
