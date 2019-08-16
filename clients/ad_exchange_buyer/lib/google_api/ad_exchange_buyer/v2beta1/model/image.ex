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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Image do
  @moduledoc """
  An image resource. You may provide a larger image than was requested,
  so long as the aspect ratio is preserved.

  ## Attributes

  *   `height` (*type:* `integer()`, *default:* `nil`) - Image height in pixels.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL of the image.
  *   `width` (*type:* `integer()`, *default:* `nil`) - Image width in pixels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :height => integer(),
          :url => String.t(),
          :width => integer()
        }

  field(:height)
  field(:url)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Image do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
