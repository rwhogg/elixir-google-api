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

defmodule GoogleApi.BigtableAdmin.V2.Model.RestoreInfo do
  @moduledoc """
  Information about a table restore.

  ## Attributes

  *   `backupInfo` (*type:* `GoogleApi.BigtableAdmin.V2.Model.BackupInfo.t`, *default:* `nil`) - Information about the backup used to restore the table. The backup
      may no longer exist.
  *   `sourceType` (*type:* `String.t`, *default:* `nil`) - The type of the restore source.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupInfo => GoogleApi.BigtableAdmin.V2.Model.BackupInfo.t(),
          :sourceType => String.t()
        }

  field(:backupInfo, as: GoogleApi.BigtableAdmin.V2.Model.BackupInfo)
  field(:sourceType)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.RestoreInfo do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.RestoreInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.RestoreInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
