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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigVideoPlayerSizes do
  @moduledoc """


  ## Attributes

  *   `aspectRatio` (*type:* `String.t`, *default:* `nil`) - The type of aspect ratio. Leave this field blank to match all aspect ratios.
  *   `minHeight` (*type:* `String.t`, *default:* `nil`) - The minimum player height in pixels. Leave this field blank to match any player height.
  *   `minWidth` (*type:* `String.t`, *default:* `nil`) - The minimum player width in pixels. Leave this field blank to match any player width.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aspectRatio => String.t(),
          :minHeight => String.t(),
          :minWidth => String.t()
        }

  field(:aspectRatio)
  field(:minHeight)
  field(:minWidth)
end

defimpl Poison.Decoder,
  for: GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigVideoPlayerSizes do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigVideoPlayerSizes.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigVideoPlayerSizes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
