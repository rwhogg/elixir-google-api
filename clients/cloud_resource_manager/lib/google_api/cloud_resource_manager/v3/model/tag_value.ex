# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudResourceManager.V3.Model.TagValue do
  @moduledoc """
  A TagValue is a child of a particular TagKey. This is used to group cloud resources for the purpose of controlling them using policies.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Resource name for TagValue in the format `tagValues/456`.
  *   `namespacedName` (*type:* `String.t`, *default:* `nil`) - Output only. Namespaced name of the TagValue. Must be in the format `{organization_id}/{tag_key_short_name}/{short_name}`.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.
  *   `shortName` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Update time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :namespacedName => String.t() | nil,
          :parent => String.t() | nil,
          :shortName => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:name)
  field(:namespacedName)
  field(:parent)
  field(:shortName)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V3.Model.TagValue do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V3.Model.TagValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V3.Model.TagValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
