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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.DayPart do
  @moduledoc """
  Daypart targeting message that specifies if the ad can be shown
  only during certain parts of a day/week.

  ## Attributes

  *   `dayOfWeek` (*type:* `String.t`, *default:* `nil`) - The day of the week to target. If unspecified, applicable to all days.
  *   `endTime` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay.t`, *default:* `nil`) - The ending time of the day for the ad to show (minute level
      granularity). The end time is exclusive. This field is not available
      for filtering in PQL queries.
  *   `startTime` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay.t`, *default:* `nil`) - The starting time of day for the ad to show (minute level granularity).
      The start time is inclusive.
      This field is not available for filtering in PQL queries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dayOfWeek => String.t(),
          :endTime => GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay.t(),
          :startTime => GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay.t()
        }

  field(:dayOfWeek)
  field(:endTime, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay)
  field(:startTime, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.DayPart do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.DayPart.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.DayPart do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
