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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.RelationshipOccurrence do
  @moduledoc """
  RelationshipOccurrence represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/

  ## Attributes

  *   `comment` (*type:* `String.t`, *default:* `nil`) - A place for the SPDX file creator to record any general comments about the relationship
  *   `source` (*type:* `String.t`, *default:* `nil`) - Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  *   `target` (*type:* `String.t`, *default:* `nil`) - Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In cases where there are "known unknowns", the use of the keyword NOASSERTION can be used The keywords NONE can be used to indicate that an SPDX element (package/file/snippet) has no other elements connected by some relationship to it
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of relationship between the source and target SPDX elements
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comment => String.t() | nil,
          :source => String.t() | nil,
          :target => String.t() | nil,
          :type => String.t() | nil
        }

  field(:comment)
  field(:source)
  field(:target)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.RelationshipOccurrence do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.RelationshipOccurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.RelationshipOccurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
