# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DNS.V1.Model.ResourceRecordSetsListResponse do
  @moduledoc """


  ## Attributes

  *   `header` (*type:* `GoogleApi.DNS.V1.Model.ResponseHeader.t`, *default:* `nil`) - 
  *   `kind` (*type:* `String.t`, *default:* `dns#resourceRecordSetsListResponse`) - Type of resource.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token.

      In this way you can retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned will be an inconsistent view of the collection. There is no way to retrieve a consistent snapshot of a collection larger than the maximum page size.
  *   `rrsets` (*type:* `list(GoogleApi.DNS.V1.Model.ResourceRecordSet.t)`, *default:* `nil`) - The resource record set resources.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :header => GoogleApi.DNS.V1.Model.ResponseHeader.t(),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :rrsets => list(GoogleApi.DNS.V1.Model.ResourceRecordSet.t())
        }

  field(:header, as: GoogleApi.DNS.V1.Model.ResponseHeader)
  field(:kind)
  field(:nextPageToken)
  field(:rrsets, as: GoogleApi.DNS.V1.Model.ResourceRecordSet, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ResourceRecordSetsListResponse do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.ResourceRecordSetsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ResourceRecordSetsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
