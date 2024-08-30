# frozen_string_literal: true

# Copyright 2024 Google LLC
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
  module Api
    # Google API Policy Annotation
    #
    # This message defines a simple API policy annotation that can be used to
    # annotate API request and response message fields with applicable policies.
    # One field may have multiple applicable policies that must all be satisfied
    # before a request can be processed. This policy annotation is used to
    # generate the overall policy that will be used for automatic runtime
    # policy enforcement and documentation generation.
    # @!attribute [rw] selector
    #   @return [::String]
    #     Selects one or more request or response message fields to apply this
    #     `FieldPolicy`.
    #
    #     When a `FieldPolicy` is used in proto annotation, the selector must
    #     be left as empty. The service config generator will automatically fill
    #     the correct value.
    #
    #     When a `FieldPolicy` is used in service config, the selector must be a
    #     comma-separated string with valid request or response field paths,
    #     such as "foo.bar" or "foo.bar,foo.baz".
    # @!attribute [rw] resource_permission
    #   @return [::String]
    #     Specifies the required permission(s) for the resource referred to by the
    #     field. It requires the field contains a valid resource reference, and
    #     the request must pass the permission checks to proceed. For example,
    #     "resourcemanager.projects.get".
    # @!attribute [rw] resource_type
    #   @return [::String]
    #     Specifies the resource type for the resource referred to by the field.
    class FieldPolicy
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Defines policies applying to an RPC method.
    # @!attribute [rw] selector
    #   @return [::String]
    #     Selects a method to which these policies should be enforced, for example,
    #     "google.pubsub.v1.Subscriber.CreateSubscription".
    #
    #     Refer to {::Google::Api::DocumentationRule#selector selector} for syntax
    #     details.
    #
    #     NOTE: This field must not be set in the proto annotation. It will be
    #     automatically filled by the service config compiler .
    # @!attribute [rw] request_policies
    #   @return [::Array<::Google::Api::FieldPolicy>]
    #     Policies that are applicable to the request message.
    class MethodPolicy
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
