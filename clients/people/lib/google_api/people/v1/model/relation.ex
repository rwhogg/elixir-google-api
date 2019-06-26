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

defmodule GoogleApi.People.V1.Model.Relation do
  @moduledoc """
  A person's relation to another person.

  ## Attributes

  *   `formattedType` (*type:* `String.t`, *default:* `nil`) - The type of the relation translated and formatted in the viewer's account
      locale or the locale specified in the Accept-Language HTTP header.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the relation.
  *   `person` (*type:* `String.t`, *default:* `nil`) - The name of the other person this relation refers to.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The person's relation to the other person. The type can be custom or one of
      these predefined values:

      * `spouse`
      * `child`
      * `mother`
      * `father`
      * `parent`
      * `brother`
      * `sister`
      * `friend`
      * `relative`
      * `domesticPartner`
      * `manager`
      * `assistant`
      * `referredBy`
      * `partner`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formattedType => String.t(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :person => String.t(),
          :type => String.t()
        }

  field(:formattedType)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:person)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Relation do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Relation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Relation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
