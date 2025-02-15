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

defmodule GoogleApi.ArtifactRegistry.V1beta1.Model.Repository do
  @moduledoc """
  A Repository for storing artifacts with a specific format.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the repository was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The user-provided description of the repository.
  *   `format` (*type:* `String.t`, *default:* `nil`) - The format of packages that are stored in the repository.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the repository, for example: "projects/p1/locations/us-central1/repositories/repo1".
  *   `sizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the repository was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :format => String.t() | nil,
          :kmsKeyName => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :sizeBytes => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:format)
  field(:kmsKeyName)
  field(:labels, type: :map)
  field(:name)
  field(:sizeBytes)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1beta1.Model.Repository do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1beta1.Model.Repository.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1beta1.Model.Repository do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
