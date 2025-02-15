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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig do
  @moduledoc """
  Config for suggestion query.

  ## Attributes

  *   `confidenceThreshold` (*type:* `number()`, *default:* `nil`) - Confidence threshold of query result. Agent Assist gives each suggestion a score in the range [0.0, 1.0], based on the relevance between the suggestion and the current conversation context. A score of 0.0 has no relevance, while a score of 1.0 has high relevance. Only suggestions with a score greater than or equal to the value of this field are included in the results. For a baseline model (the default), the recommended value is in the range [0.05, 0.1]. For a custom model, there is no recommended value. Tune this value by starting from a very low value and slowly increasing until you have desired results. If this field is not set, it defaults to 0.0, which means that all suggestions are returned. Supported features: ARTICLE_SUGGESTION, FAQ, SMART_REPLY, SMART_COMPOSE.
  *   `contextFilterSettings` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings.t`, *default:* `nil`) - Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  *   `dialogflowQuerySource` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.t`, *default:* `nil`) - Query from Dialogflow agent. It is used by DIALOGFLOW_ASSIST.
  *   `documentQuerySource` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource.t`, *default:* `nil`) - Query from knowledge base document. It is used by: SMART_REPLY, SMART_COMPOSE.
  *   `knowledgeBaseQuerySource` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource.t`, *default:* `nil`) - Query from knowledgebase. It is used by: ARTICLE_SUGGESTION, FAQ.
  *   `maxResults` (*type:* `integer()`, *default:* `nil`) - Maximum number of results to return. Currently, if unset, defaults to 10. And the max number is 20.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidenceThreshold => number() | nil,
          :contextFilterSettings =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings.t()
            | nil,
          :dialogflowQuerySource =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.t()
            | nil,
          :documentQuerySource =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource.t()
            | nil,
          :knowledgeBaseQuerySource =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource.t()
            | nil,
          :maxResults => integer() | nil
        }

  field(:confidenceThreshold)

  field(:contextFilterSettings,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings
  )

  field(:dialogflowQuerySource,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource
  )

  field(:documentQuerySource,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource
  )

  field(:knowledgeBaseQuerySource,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource
  )

  field(:maxResults)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
