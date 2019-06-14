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

defmodule GoogleApi.AppsActivity.V1.Model.Parent do
  @moduledoc """
  Contains information about a parent object. For example, a folder in Drive is a parent for all files within it.

  ## Attributes

  - id (String.t): The parent's ID. Defaults to `nil`.
  - isRoot (boolean()): Whether this is the root folder. Defaults to `nil`.
  - title (String.t): The parent's title. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :isRoot => boolean(),
          :title => String.t()
        }

  field(:id)
  field(:isRoot)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.AppsActivity.V1.Model.Parent do
  def decode(value, options) do
    GoogleApi.AppsActivity.V1.Model.Parent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppsActivity.V1.Model.Parent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
