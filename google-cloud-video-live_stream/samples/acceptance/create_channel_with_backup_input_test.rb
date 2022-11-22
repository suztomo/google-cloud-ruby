# Copyright 2022 Google, Inc
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

require_relative "helper"

describe "#create_channel_with_backup_input", :live_stream_snippet do
  it "creates a channel with a backup input" do
    sample = SampleLoader.load "create_channel_with_backup_input.rb"

    refute_nil input
    refute_nil update_input
    @input_created = true
    @update_input_created = true

    out, _err = capture_io do
      sample.run project_id: project_id, location: location_id, channel_id: channel_id, primary_input_id: input_id, backup_input_id: update_input_id, output_uri: output_uri
    end
    @channel_created_stopped = true
    channel_id_regex = Regexp.escape channel_id
    assert_match %r{Channel: projects/\S+/locations/#{location_id}/channels/#{channel_id_regex}}, out
  end
end
