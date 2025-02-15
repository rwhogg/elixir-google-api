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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransition do
  @moduledoc """
  A transition in a page.

  ## Attributes

  *   `covered` (*type:* `boolean()`, *default:* `nil`) - Whether or not the transition is covered by at least one of the agent's test cases.
  *   `eventHandler` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler.t`, *default:* `nil`) - Event handler.
  *   `index` (*type:* `integer()`, *default:* `nil`) - The index of a transition in the transition list. Starting from 0.
  *   `source` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode.t`, *default:* `nil`) - The start node of a transition.
  *   `target` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode.t`, *default:* `nil`) - The end node of a transition.
  *   `transitionRoute` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute.t`, *default:* `nil`) - Intent route or condition route.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :covered => boolean() | nil,
          :eventHandler =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler.t() | nil,
          :index => integer() | nil,
          :source =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode.t()
            | nil,
          :target =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode.t()
            | nil,
          :transitionRoute =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute.t() | nil
        }

  field(:covered)
  field(:eventHandler, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler)
  field(:index)

  field(:source,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
  )

  field(:target,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
  )

  field(:transitionRoute,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransition do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransition.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionCoverageTransition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
