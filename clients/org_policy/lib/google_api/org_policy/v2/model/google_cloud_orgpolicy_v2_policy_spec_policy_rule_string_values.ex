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

defmodule GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues do
  @moduledoc """
  A message that holds specific allowed and denied values. This message can define specific values and subtrees of Cloud Resource Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed or denied. This is achieved by using the `under:` and optional `is:` prefixes. The `under:` prefix is used to denote resource subtree values. The `is:` prefix is used to denote specific values, and is required only if the value contains a ":". Values prefixed with "is:" are treated the same as values with no prefix. Ancestry subtrees must be in one of the following formats: - "projects/", e.g. "projects/tokyo-rain-123" - "folders/", e.g. "folders/1234" - "organizations/", e.g. "organizations/1234" The `supports_under` field of the associated `Constraint` defines whether ancestry prefixes can be used.

  ## Attributes

  *   `allowedValues` (*type:* `list(String.t)`, *default:* `nil`) - List of values allowed at this resource.
  *   `deniedValues` (*type:* `list(String.t)`, *default:* `nil`) - List of values denied at this resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedValues => list(String.t()) | nil,
          :deniedValues => list(String.t()) | nil
        }

  field(:allowedValues, type: :list)
  field(:deniedValues, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues do
  def decode(value, options) do
    GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
