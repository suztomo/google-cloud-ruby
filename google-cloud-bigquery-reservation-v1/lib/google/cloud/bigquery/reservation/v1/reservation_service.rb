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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/bigquery/reservation/v1/version"

require "google/cloud/bigquery/reservation/v1/reservation_service/credentials"
require "google/cloud/bigquery/reservation/v1/reservation_service/paths"
require "google/cloud/bigquery/reservation/v1/reservation_service/client"

module Google
  module Cloud
    module Bigquery
      module Reservation
        module V1
          ##
          # This API allows users to manage their flat-rate BigQuery reservations.
          #
          # A reservation provides computational resource guarantees, in the form of
          # [slots](https://cloud.google.com/bigquery/docs/slots), to users. A slot is a
          # unit of computational power in BigQuery, and serves as the basic unit of
          # parallelism. In a scan of a multi-partitioned table, a single slot operates
          # on a single partition of the table. A reservation resource exists as a child
          # resource of the admin project and location, e.g.:
          #   `projects/myproject/locations/US/reservations/reservationName`.
          #
          # A capacity commitment is a way to purchase compute capacity for BigQuery jobs
          # (in the form of slots) with some committed period of usage. A capacity
          # commitment resource exists as a child resource of the admin project and
          # location, e.g.:
          #   `projects/myproject/locations/US/capacityCommitments/id`.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/bigquery/reservation/v1/reservation_service"
          #     client = ::Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client.new
          #
          module ReservationService
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "reservation_service", "helpers.rb"
require "google/cloud/bigquery/reservation/v1/reservation_service/helpers" if ::File.file? helper_path

