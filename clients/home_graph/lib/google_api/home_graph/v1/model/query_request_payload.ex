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

defmodule GoogleApi.HomeGraph.V1.Model.QueryRequestPayload do
  @moduledoc """
  Payload containing device IDs.

  ## Attributes

  *   `devices` (*type:* `list(GoogleApi.HomeGraph.V1.Model.AgentDeviceId.t)`, *default:* `nil`) - Third-party partner's device IDs for which to get the device states.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :devices => list(GoogleApi.HomeGraph.V1.Model.AgentDeviceId.t())
        }

  field(:devices, as: GoogleApi.HomeGraph.V1.Model.AgentDeviceId, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HomeGraph.V1.Model.QueryRequestPayload do
  def decode(value, options) do
    GoogleApi.HomeGraph.V1.Model.QueryRequestPayload.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HomeGraph.V1.Model.QueryRequestPayload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
