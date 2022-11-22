# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/certificatemanager/v1/certificate_manager.proto for package 'Google.Cloud.CertificateManager.V1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/certificatemanager/v1/certificate_manager_pb'

module Google
  module Cloud
    module CertificateManager
      module V1
        module CertificateManager
          # API Overview
          #
          # Certificates Manager API allows customers to see and manage all their TLS
          # certificates.
          #
          # Certificates Manager API service provides methods to manage certificates,
          # group them into collections, and create serving configuration that can be
          # easily applied to other Cloud resources e.g. Target Proxies.
          #
          # Data Model
          #
          # The Certificates Manager service exposes the following resources:
          #
          # * `Certificate` which describes a single TLS certificate.
          # * `CertificateMap` which describes a collection of certificates that can be
          # attached to a target resource.
          # * `CertificateMapEntry` which describes a single configuration entry that
          # consists of a SNI and a group of certificates. It's a subresource of
          # CertificateMap.
          #
          # Certificate, CertificateMap and CertificateMapEntry IDs
          # have to match "^[a-z0-9-]{1,63}$ regexp, which means that
          # - only lower case letters, digits, and hyphen are allowed
          # - length of the resource ID has to be in [1,63] range.
          #
          # Provides methods to manage Cloud Certificate Manager entities.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.certificatemanager.v1.CertificateManager'

            # Lists Certificates in a given project and location.
            rpc :ListCertificates, ::Google::Cloud::CertificateManager::V1::ListCertificatesRequest, ::Google::Cloud::CertificateManager::V1::ListCertificatesResponse
            # Gets details of a single Certificate.
            rpc :GetCertificate, ::Google::Cloud::CertificateManager::V1::GetCertificateRequest, ::Google::Cloud::CertificateManager::V1::Certificate
            # Creates a new Certificate in a given project and location.
            rpc :CreateCertificate, ::Google::Cloud::CertificateManager::V1::CreateCertificateRequest, ::Google::Longrunning::Operation
            # Updates a Certificate.
            rpc :UpdateCertificate, ::Google::Cloud::CertificateManager::V1::UpdateCertificateRequest, ::Google::Longrunning::Operation
            # Deletes a single Certificate.
            rpc :DeleteCertificate, ::Google::Cloud::CertificateManager::V1::DeleteCertificateRequest, ::Google::Longrunning::Operation
            # Lists CertificateMaps in a given project and location.
            rpc :ListCertificateMaps, ::Google::Cloud::CertificateManager::V1::ListCertificateMapsRequest, ::Google::Cloud::CertificateManager::V1::ListCertificateMapsResponse
            # Gets details of a single CertificateMap.
            rpc :GetCertificateMap, ::Google::Cloud::CertificateManager::V1::GetCertificateMapRequest, ::Google::Cloud::CertificateManager::V1::CertificateMap
            # Creates a new CertificateMap in a given project and location.
            rpc :CreateCertificateMap, ::Google::Cloud::CertificateManager::V1::CreateCertificateMapRequest, ::Google::Longrunning::Operation
            # Updates a CertificateMap.
            rpc :UpdateCertificateMap, ::Google::Cloud::CertificateManager::V1::UpdateCertificateMapRequest, ::Google::Longrunning::Operation
            # Deletes a single CertificateMap. A Certificate Map can't be deleted
            # if it contains Certificate Map Entries. Remove all the entries from
            # the map before calling this method.
            rpc :DeleteCertificateMap, ::Google::Cloud::CertificateManager::V1::DeleteCertificateMapRequest, ::Google::Longrunning::Operation
            # Lists CertificateMapEntries in a given project and location.
            rpc :ListCertificateMapEntries, ::Google::Cloud::CertificateManager::V1::ListCertificateMapEntriesRequest, ::Google::Cloud::CertificateManager::V1::ListCertificateMapEntriesResponse
            # Gets details of a single CertificateMapEntry.
            rpc :GetCertificateMapEntry, ::Google::Cloud::CertificateManager::V1::GetCertificateMapEntryRequest, ::Google::Cloud::CertificateManager::V1::CertificateMapEntry
            # Creates a new CertificateMapEntry in a given project and location.
            rpc :CreateCertificateMapEntry, ::Google::Cloud::CertificateManager::V1::CreateCertificateMapEntryRequest, ::Google::Longrunning::Operation
            # Updates a CertificateMapEntry.
            rpc :UpdateCertificateMapEntry, ::Google::Cloud::CertificateManager::V1::UpdateCertificateMapEntryRequest, ::Google::Longrunning::Operation
            # Deletes a single CertificateMapEntry.
            rpc :DeleteCertificateMapEntry, ::Google::Cloud::CertificateManager::V1::DeleteCertificateMapEntryRequest, ::Google::Longrunning::Operation
            # Lists DnsAuthorizations in a given project and location.
            rpc :ListDnsAuthorizations, ::Google::Cloud::CertificateManager::V1::ListDnsAuthorizationsRequest, ::Google::Cloud::CertificateManager::V1::ListDnsAuthorizationsResponse
            # Gets details of a single DnsAuthorization.
            rpc :GetDnsAuthorization, ::Google::Cloud::CertificateManager::V1::GetDnsAuthorizationRequest, ::Google::Cloud::CertificateManager::V1::DnsAuthorization
            # Creates a new DnsAuthorization in a given project and location.
            rpc :CreateDnsAuthorization, ::Google::Cloud::CertificateManager::V1::CreateDnsAuthorizationRequest, ::Google::Longrunning::Operation
            # Updates a DnsAuthorization.
            rpc :UpdateDnsAuthorization, ::Google::Cloud::CertificateManager::V1::UpdateDnsAuthorizationRequest, ::Google::Longrunning::Operation
            # Deletes a single DnsAuthorization.
            rpc :DeleteDnsAuthorization, ::Google::Cloud::CertificateManager::V1::DeleteDnsAuthorizationRequest, ::Google::Longrunning::Operation
            # Lists CertificateIssuanceConfigs in a given project and location.
            rpc :ListCertificateIssuanceConfigs, ::Google::Cloud::CertificateManager::V1::ListCertificateIssuanceConfigsRequest, ::Google::Cloud::CertificateManager::V1::ListCertificateIssuanceConfigsResponse
            # Gets details of a single CertificateIssuanceConfig.
            rpc :GetCertificateIssuanceConfig, ::Google::Cloud::CertificateManager::V1::GetCertificateIssuanceConfigRequest, ::Google::Cloud::CertificateManager::V1::CertificateIssuanceConfig
            # Creates a new CertificateIssuanceConfig in a given project and location.
            rpc :CreateCertificateIssuanceConfig, ::Google::Cloud::CertificateManager::V1::CreateCertificateIssuanceConfigRequest, ::Google::Longrunning::Operation
            # Deletes a single CertificateIssuanceConfig.
            rpc :DeleteCertificateIssuanceConfig, ::Google::Cloud::CertificateManager::V1::DeleteCertificateIssuanceConfigRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
