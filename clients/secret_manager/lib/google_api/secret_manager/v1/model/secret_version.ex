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

defmodule GoogleApi.SecretManager.V1.Model.SecretVersion do
  @moduledoc """
  A secret version resource in the Secret Manager API.

  ## Attributes

  *   `clientSpecifiedPayloadChecksum` (*type:* `boolean()`, *default:* `nil`) - Output only. True if payload checksum specified in SecretPayload object has been received by SecretManagerService on SecretManagerService.AddSecretVersion.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the SecretVersion was created.
  *   `destroyTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this SecretVersion was destroyed. Only present if state is DESTROYED.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. Etag of the currently stored SecretVersion.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*`. SecretVersion IDs in a Secret start at 1 and are incremented for each subsequent version of the secret.
  *   `replicationStatus` (*type:* `GoogleApi.SecretManager.V1.Model.ReplicationStatus.t`, *default:* `nil`) - The replication status of the SecretVersion.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the SecretVersion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientSpecifiedPayloadChecksum => boolean() | nil,
          :createTime => DateTime.t() | nil,
          :destroyTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :replicationStatus => GoogleApi.SecretManager.V1.Model.ReplicationStatus.t() | nil,
          :state => String.t() | nil
        }

  field(:clientSpecifiedPayloadChecksum)
  field(:createTime, as: DateTime)
  field(:destroyTime, as: DateTime)
  field(:etag)
  field(:name)
  field(:replicationStatus, as: GoogleApi.SecretManager.V1.Model.ReplicationStatus)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.SecretManager.V1.Model.SecretVersion do
  def decode(value, options) do
    GoogleApi.SecretManager.V1.Model.SecretVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecretManager.V1.Model.SecretVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
