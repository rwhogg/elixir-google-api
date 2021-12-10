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

defmodule GoogleApi.DFAReporting.V35.Model.CreativeOptimizationConfiguration do
  @moduledoc """
  Creative optimization settings.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this creative optimization config. This field is auto-generated when the campaign is inserted or updated. It can be null for existing campaigns.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this creative optimization config. This is a required field and must be less than 129 characters long.
  *   `optimizationActivitys` (*type:* `list(GoogleApi.DFAReporting.V35.Model.OptimizationActivity.t)`, *default:* `nil`) - List of optimization activities associated with this configuration.
  *   `optimizationModel` (*type:* `String.t`, *default:* `nil`) - Optimization model for this configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :optimizationActivitys =>
            list(GoogleApi.DFAReporting.V35.Model.OptimizationActivity.t()) | nil,
          :optimizationModel => String.t() | nil
        }

  field(:id)
  field(:name)

  field(:optimizationActivitys,
    as: GoogleApi.DFAReporting.V35.Model.OptimizationActivity,
    type: :list
  )

  field(:optimizationModel)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.CreativeOptimizationConfiguration do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.CreativeOptimizationConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.CreativeOptimizationConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
