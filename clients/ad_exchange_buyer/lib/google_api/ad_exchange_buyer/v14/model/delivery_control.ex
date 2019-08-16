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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControl do
  @moduledoc """


  ## Attributes

  *   `creativeBlockingLevel` (*type:* `String.t`, *default:* `nil`) - 
  *   `deliveryRateType` (*type:* `String.t`, *default:* `nil`) - 
  *   `frequencyCaps` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControlFrequencyCap.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creativeBlockingLevel => String.t(),
          :deliveryRateType => String.t(),
          :frequencyCaps =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControlFrequencyCap.t())
        }

  field(:creativeBlockingLevel)
  field(:deliveryRateType)

  field(
    :frequencyCaps,
    as: GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControlFrequencyCap,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControl do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
