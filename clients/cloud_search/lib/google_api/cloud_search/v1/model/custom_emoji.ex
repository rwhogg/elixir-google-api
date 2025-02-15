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

defmodule GoogleApi.CloudSearch.V1.Model.CustomEmoji do
  @moduledoc """
  Proto representation of a custom emoji. May be used in both APIs and in Spanner, but certain fields should be restricted to one or the other. See the per-field documentation for details. NEXT_TAG: 14

  ## Attributes

  *   `blobId` (*type:* `String.t`, *default:* `nil`) - ID for the underlying image data in Blobstore. This field should *only* be present in Spanner or within the server, but should not be exposed in public APIs.
  *   `contentType` (*type:* `String.t`, *default:* `nil`) - Content type of the file used to upload the emoji. Used for takeout. Written to Spanner when the emoji is created.
  *   `createTimeMicros` (*type:* `String.t`, *default:* `nil`) - Time when the Emoji was created, in microseconds. This field may be present in Spanner, within the server, or in public APIs.
  *   `creatorUserId` (*type:* `GoogleApi.CloudSearch.V1.Model.UserId.t`, *default:* `nil`) - This field should *never* be persisted to Spanner.
  *   `deleteTimeMicros` (*type:* `String.t`, *default:* `nil`) - Time when the emoji was deleted, in microseconds. This field may be present in Spanner, within the server, or in public APIs. Only present if the emoji has been deleted.
  *   `ephemeralUrl` (*type:* `String.t`, *default:* `nil`) - Output only. A short-lived URL clients can use for directly accessing a custom emoji image. This field is intended for API consumption, and should *never* be persisted to Spanner.
  *   `ownerCustomerId` (*type:* `GoogleApi.CloudSearch.V1.Model.CustomerId.t`, *default:* `nil`) - This field should *never* be persisted to Spanner.
  *   `readToken` (*type:* `String.t`, *default:* `nil`) - Opaque token that clients use to construct the URL for accessing the custom emoji’s image data. This field is intended for API consumption, and should *never* be persisted to Spanner.
  *   `shortcode` (*type:* `String.t`, *default:* `nil`) - User-provided, human-readable ID for the custom emoji. Users are expected to observe this field in the UI instead of the UUID. This shortcode should be unique within an organization, but has no global uniqueness guarantees, unlike the UUID. This field should *never* be persisted to Spanner.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Snapshot of the current state of the emoji, which may differ from the source-of-truth in the CustomEmojis table. This field should *never* be persisted to Spanner.
  *   `updateTimeMicros` (*type:* `String.t`, *default:* `nil`) - 
  *   `uuid` (*type:* `String.t`, *default:* `nil`) - Unique key for a custom emoji resource. Required. This field is *always* populated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blobId => String.t() | nil,
          :contentType => String.t() | nil,
          :createTimeMicros => String.t() | nil,
          :creatorUserId => GoogleApi.CloudSearch.V1.Model.UserId.t() | nil,
          :deleteTimeMicros => String.t() | nil,
          :ephemeralUrl => String.t() | nil,
          :ownerCustomerId => GoogleApi.CloudSearch.V1.Model.CustomerId.t() | nil,
          :readToken => String.t() | nil,
          :shortcode => String.t() | nil,
          :state => String.t() | nil,
          :updateTimeMicros => String.t() | nil,
          :uuid => String.t() | nil
        }

  field(:blobId)
  field(:contentType)
  field(:createTimeMicros)
  field(:creatorUserId, as: GoogleApi.CloudSearch.V1.Model.UserId)
  field(:deleteTimeMicros)
  field(:ephemeralUrl)
  field(:ownerCustomerId, as: GoogleApi.CloudSearch.V1.Model.CustomerId)
  field(:readToken)
  field(:shortcode)
  field(:state)
  field(:updateTimeMicros)
  field(:uuid)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.CustomEmoji do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.CustomEmoji.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.CustomEmoji do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
