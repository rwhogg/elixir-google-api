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

defmodule GoogleApi.AdMob.V1.Model.GenerateNetworkReportResponse do
  @moduledoc """
  The streaming response for the AdMob Network report where the first response contains the report header, then a stream of row responses, and finally a footer as the last response message. For example: [{ "header": { "dateRange": { "startDate": {"year": 2018, "month": 9, "day": 1}, "endDate": {"year": 2018, "month": 9, "day": 1} }, "localizationSettings": { "currencyCode": "USD", "languageCode": "en-US" } } }, { "row": { "dimensionValues": { "DATE": {"value": "20180918"}, "APP": { "value": "ca-app-pub-8123415297019784~1001342552", displayLabel: "My app name!" } }, "metricValues": { "ESTIMATED_EARNINGS": {"microsValue": 6500000} } } }, { "footer": {"matchingRowCount": 1} }]

  ## Attributes

  *   `footer` (*type:* `GoogleApi.AdMob.V1.Model.ReportFooter.t`, *default:* `nil`) - Additional information about the generated report, such as warnings about the data.
  *   `header` (*type:* `GoogleApi.AdMob.V1.Model.ReportHeader.t`, *default:* `nil`) - Report generation settings that describes the report contents, such as the report date range and localization settings.
  *   `row` (*type:* `GoogleApi.AdMob.V1.Model.ReportRow.t`, *default:* `nil`) - Actual report data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :footer => GoogleApi.AdMob.V1.Model.ReportFooter.t(),
          :header => GoogleApi.AdMob.V1.Model.ReportHeader.t(),
          :row => GoogleApi.AdMob.V1.Model.ReportRow.t()
        }

  field(:footer, as: GoogleApi.AdMob.V1.Model.ReportFooter)
  field(:header, as: GoogleApi.AdMob.V1.Model.ReportHeader)
  field(:row, as: GoogleApi.AdMob.V1.Model.ReportRow)
end

defimpl Poison.Decoder, for: GoogleApi.AdMob.V1.Model.GenerateNetworkReportResponse do
  def decode(value, options) do
    GoogleApi.AdMob.V1.Model.GenerateNetworkReportResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdMob.V1.Model.GenerateNetworkReportResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
