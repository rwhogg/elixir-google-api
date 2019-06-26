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

defmodule GoogleApi.People.V1.Model.Name do
  @moduledoc """
  A person's name. If the name is a mononym, the family name is empty.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The read-only display name formatted according to the locale specified by
      the viewer's account or the `Accept-Language` HTTP header.
  *   `displayNameLastFirst` (*type:* `String.t`, *default:* `nil`) - The read-only display name with the last name first formatted according to
      the locale specified by the viewer's account or the
      `Accept-Language` HTTP header.
  *   `familyName` (*type:* `String.t`, *default:* `nil`) - The family name.
  *   `givenName` (*type:* `String.t`, *default:* `nil`) - The given name.
  *   `honorificPrefix` (*type:* `String.t`, *default:* `nil`) - The honorific prefixes, such as `Mrs.` or `Dr.`
  *   `honorificSuffix` (*type:* `String.t`, *default:* `nil`) - The honorific suffixes, such as `Jr.`
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the name.
  *   `middleName` (*type:* `String.t`, *default:* `nil`) - The middle name(s).
  *   `phoneticFamilyName` (*type:* `String.t`, *default:* `nil`) - The family name spelled as it sounds.
  *   `phoneticFullName` (*type:* `String.t`, *default:* `nil`) - The full name spelled as it sounds.
  *   `phoneticGivenName` (*type:* `String.t`, *default:* `nil`) - The given name spelled as it sounds.
  *   `phoneticHonorificPrefix` (*type:* `String.t`, *default:* `nil`) - The honorific prefixes spelled as they sound.
  *   `phoneticHonorificSuffix` (*type:* `String.t`, *default:* `nil`) - The honorific suffixes spelled as they sound.
  *   `phoneticMiddleName` (*type:* `String.t`, *default:* `nil`) - The middle name(s) spelled as they sound.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :displayNameLastFirst => String.t(),
          :familyName => String.t(),
          :givenName => String.t(),
          :honorificPrefix => String.t(),
          :honorificSuffix => String.t(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :middleName => String.t(),
          :phoneticFamilyName => String.t(),
          :phoneticFullName => String.t(),
          :phoneticGivenName => String.t(),
          :phoneticHonorificPrefix => String.t(),
          :phoneticHonorificSuffix => String.t(),
          :phoneticMiddleName => String.t()
        }

  field(:displayName)
  field(:displayNameLastFirst)
  field(:familyName)
  field(:givenName)
  field(:honorificPrefix)
  field(:honorificSuffix)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:middleName)
  field(:phoneticFamilyName)
  field(:phoneticFullName)
  field(:phoneticGivenName)
  field(:phoneticHonorificPrefix)
  field(:phoneticHonorificSuffix)
  field(:phoneticMiddleName)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Name do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Name.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Name do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
