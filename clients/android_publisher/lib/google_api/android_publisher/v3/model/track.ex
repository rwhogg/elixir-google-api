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

defmodule GoogleApi.AndroidPublisher.V3.Model.Track do
  @moduledoc """
  A track configuration. The resource for TracksService.

  ## Attributes

  *   `releases` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.TrackRelease.t)`, *default:* `nil`) - In a read request, represents all active releases in the track. In an update request, represents desired changes.
  *   `track` (*type:* `String.t`, *default:* `nil`) - Identifier of the track.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :releases => list(GoogleApi.AndroidPublisher.V3.Model.TrackRelease.t()) | nil,
          :track => String.t() | nil
        }

  field(:releases, as: GoogleApi.AndroidPublisher.V3.Model.TrackRelease, type: :list)
  field(:track)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.Track do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.Track.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.Track do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
