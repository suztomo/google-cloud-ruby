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


module Grafeas
  module V1
    # Metadata for any related URL information.
    # @!attribute [rw] url
    #   @return [::String]
    #     Specific URL associated with the resource.
    # @!attribute [rw] label
    #   @return [::String]
    #     Label to describe usage of the URL.
    class RelatedUrl
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Verifiers (e.g. Kritis implementations) MUST verify signatures
    # with respect to the trust anchors defined in policy (e.g. a Kritis policy).
    # Typically this means that the verifier has been configured with a map from
    # `public_key_id` to public key material (and any required parameters, e.g.
    # signing algorithm).
    #
    # In particular, verification implementations MUST NOT treat the signature
    # `public_key_id` as anything more than a key lookup hint. The `public_key_id`
    # DOES NOT validate or authenticate a public key; it only provides a mechanism
    # for quickly selecting a public key ALREADY CONFIGURED on the verifier through
    # a trusted channel. Verification implementations MUST reject signatures in any
    # of the following circumstances:
    #   * The `public_key_id` is not recognized by the verifier.
    #   * The public key that `public_key_id` refers to does not verify the
    #     signature with respect to the payload.
    #
    # The `signature` contents SHOULD NOT be "attached" (where the payload is
    # included with the serialized `signature` bytes). Verifiers MUST ignore any
    # "attached" payload and only verify signatures with respect to explicitly
    # provided payload (e.g. a `payload` field on the proto message that holds
    # this Signature, or the canonical serialization of the proto message that
    # holds this signature).
    # @!attribute [rw] signature
    #   @return [::String]
    #     The content of the signature, an opaque bytestring.
    #     The payload that this signature verifies MUST be unambiguously provided
    #     with the Signature during verification. A wrapper message might provide
    #     the payload explicitly. Alternatively, a message might have a canonical
    #     serialization that can always be unambiguously computed to derive the
    #     payload.
    # @!attribute [rw] public_key_id
    #   @return [::String]
    #     The identifier for the public key that verifies this signature.
    #       * The `public_key_id` is required.
    #       * The `public_key_id` SHOULD be an RFC3986 conformant URI.
    #       * When possible, the `public_key_id` SHOULD be an immutable reference,
    #         such as a cryptographic digest.
    #
    #     Examples of valid `public_key_id`s:
    #
    #     OpenPGP V4 public key fingerprint:
    #       * "openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA"
    #     See https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr for more
    #     details on this scheme.
    #
    #     RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER
    #     serialization):
    #       * "ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU"
    #       * "nih:///sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5"
    class Signature
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # MUST match
    # https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An
    # authenticated message of arbitrary type.
    # @!attribute [rw] payload
    #   @return [::String]
    # @!attribute [rw] payload_type
    #   @return [::String]
    # @!attribute [rw] signatures
    #   @return [::Array<::Grafeas::V1::EnvelopeSignature>]
    class Envelope
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # @!attribute [rw] sig
    #   @return [::String]
    # @!attribute [rw] keyid
    #   @return [::String]
    class EnvelopeSignature
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Indicates the location at which a package was found.
    # @!attribute [rw] file_path
    #   @return [::String]
    #     For jars that are contained inside .war files, this filepath
    #     can indicate the path to war file combined with the path to jar file.
    class FileLocation
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # License information.
    # @!attribute [rw] expression
    #   @return [::String]
    #     Often a single license can be used to represent the licensing terms.
    #     Sometimes it is necessary to include a choice of one or more licenses
    #     or some combination of license identifiers.
    #     Examples: "LGPL-2.1-only OR MIT", "LGPL-2.1-only AND MIT",
    #     "GPL-2.0-or-later WITH Bison-exception-2.2".
    # @!attribute [rw] comments
    #   @return [::String]
    #     Comments
    class License
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Digest information.
    # @!attribute [rw] algo
    #   @return [::String]
    #     `SHA1`, `SHA512` etc.
    # @!attribute [rw] digest_bytes
    #   @return [::String]
    #     Value of the digest.
    class Digest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Kind represents the kinds of notes supported.
    module NoteKind
      # Default value. This value is unused.
      NOTE_KIND_UNSPECIFIED = 0

      # The note and occurrence represent a package vulnerability.
      VULNERABILITY = 1

      # The note and occurrence assert build provenance.
      BUILD = 2

      # This represents an image basis relationship.
      IMAGE = 3

      # This represents a package installed via a package manager.
      PACKAGE = 4

      # The note and occurrence track deployment events.
      DEPLOYMENT = 5

      # The note and occurrence track the initial discovery status of a resource.
      DISCOVERY = 6

      # This represents a logical "role" that can attest to artifacts.
      ATTESTATION = 7

      # This represents an available package upgrade.
      UPGRADE = 8

      # This represents a Compliance Note
      COMPLIANCE = 9

      # This represents a DSSE attestation Note
      DSSE_ATTESTATION = 10

      # This represents a Vulnerability Assessment.
      VULNERABILITY_ASSESSMENT = 11

      # This represents an SBOM Reference.
      SBOM_REFERENCE = 12
    end
  end
end
