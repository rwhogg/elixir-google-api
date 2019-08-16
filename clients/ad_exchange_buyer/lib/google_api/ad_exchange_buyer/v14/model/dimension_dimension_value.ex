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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.DimensionDimensionValue do
  @moduledoc """
  Value of the dimension.

  ## Attributes

  *   `id` (*type:* `integer()`, *default:* `nil`) - Id of the dimension.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the dimension mainly for debugging purposes, except for the case of CREATIVE_SIZE. For CREATIVE_SIZE, strings are used instead of ids.
  *   `percentage` (*type:* `integer()`, *default:* `nil`) - Percent of total impressions for a dimension type. e.g. {dimension_type: 'GENDER', [{dimension_value: {id: 1, name: 'MALE', percentage: 60}}]} Gender MALE is 60% of all impressions which have gender.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => integer(),
          :name => String.t(),
          :percentage => integer()
        }

  field(:id)
  field(:name)
  field(:percentage)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.DimensionDimensionValue do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.DimensionDimensionValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.DimensionDimensionValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
