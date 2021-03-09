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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserInfo do
  @moduledoc """
  Information of end users.

  ## Attributes

  *   `directUserRequest` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates if the request is made directly from the end user in which case the user_agent and ip_address fields can be populated from the HTTP request. This should *not* be set when using the javascript pixel. This flag should be set only if the API request is made directly from the end user such as a mobile app (and not if a gateway or a server is processing and pushing the user events).
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - Optional. IP address of the user. This could be either IPv4 (e.g. 104.133.9.80) or IPv6 (e.g. 2001:0db8:85a3:0000:0000:8a2e:0370:7334). This should *not* be set when using the javascript pixel or if `direct_user_request` is set. Used to extract location information for personalization.
  *   `userAgent` (*type:* `String.t`, *default:* `nil`) - Optional. User agent as included in the HTTP header. UTF-8 encoded string with a length limit of 1 KiB. This should *not* be set when using the JavaScript pixel or if `directUserRequest` is set.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Optional. Unique identifier for logged-in user with a length limit of 128 bytes. Required only for logged-in users.
  *   `visitorId` (*type:* `String.t`, *default:* `nil`) - Required. A unique identifier for tracking visitors with a length limit of 128 bytes. For example, this could be implemented with a http cookie, which should be able to uniquely identify a visitor on a single device. This unique identifier should not change if the visitor log in/out of the website. Maximum length 128 bytes. Cannot be empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :directUserRequest => boolean() | nil,
          :ipAddress => String.t() | nil,
          :userAgent => String.t() | nil,
          :userId => String.t() | nil,
          :visitorId => String.t() | nil
        }

  field(:directUserRequest)
  field(:ipAddress)
  field(:userAgent)
  field(:userId)
  field(:visitorId)
end

defimpl Poison.Decoder,
  for: GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserInfo do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
