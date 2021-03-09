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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictResponse do
  @moduledoc """
  Response message for predict method.

  ## Attributes

  *   `dryRun` (*type:* `boolean()`, *default:* `nil`) - True if the dryRun property was set in the request.
  *   `itemsMissingInCatalog` (*type:* `list(String.t)`, *default:* `nil`) - IDs of items in the request that were missing from the catalog.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Additional domain specific prediction response metadata.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If empty, the list is complete. If nonempty, the token to pass to the next request's PredictRequest.page_token.
  *   `recommendationToken` (*type:* `String.t`, *default:* `nil`) - A unique recommendation token. This should be included in the user event logs resulting from this recommendation, which enables accurate attribution of recommendation model performance.
  *   `results` (*type:* `list(GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult.t)`, *default:* `nil`) - A list of recommended items. The order represents the ranking (from the most relevant item to the least).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dryRun => boolean() | nil,
          :itemsMissingInCatalog => list(String.t()) | nil,
          :metadata => map() | nil,
          :nextPageToken => String.t() | nil,
          :recommendationToken => String.t() | nil,
          :results =>
            list(
              GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult.t()
            )
            | nil
        }

  field(:dryRun)
  field(:itemsMissingInCatalog, type: :list)
  field(:metadata, type: :map)
  field(:nextPageToken)
  field(:recommendationToken)

  field(:results,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictResponse do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PredictResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
