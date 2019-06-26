# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.People.V1.Model.Birthday do
  @moduledoc """
  A person's birthday. At least one of the `date` and `text` fields are
  specified. The `date` and `text` fields typically represent the same
  date, but are not guaranteed to.

  ## Attributes

  *   `date` (*type:* `GoogleApi.People.V1.Model.Date.t`, *default:* `nil`) - The date of the birthday.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the birthday.
  *   `text` (*type:* `String.t`, *default:* `nil`) - A free-form string representing the user's birthday.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :date => GoogleApi.People.V1.Model.Date.t(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :text => String.t()
        }

  field(:date, as: GoogleApi.People.V1.Model.Date)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Birthday do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Birthday.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Birthday do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
