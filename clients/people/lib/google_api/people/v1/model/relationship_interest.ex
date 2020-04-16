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

defmodule GoogleApi.People.V1.Model.RelationshipInterest do
  @moduledoc """
  **DEPRECATED**: No data will be returned
  A person's relationship interest .

  ## Attributes

  *   `formattedValue` (*type:* `String.t`, *default:* `nil`) - Output only. The value of the relationship interest translated and formatted
      in the viewer's account locale or the locale specified in the
      Accept-Language HTTP header.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the relationship interest.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The kind of relationship the person is looking for. The value can be custom
      or one of these predefined values:

      * `friend`
      * `date`
      * `relationship`
      * `networking`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formattedValue => String.t(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :value => String.t()
        }

  field(:formattedValue)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.RelationshipInterest do
  def decode(value, options) do
    GoogleApi.People.V1.Model.RelationshipInterest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.RelationshipInterest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
