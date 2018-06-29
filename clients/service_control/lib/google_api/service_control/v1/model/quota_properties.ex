# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceControl.V1.Model.QuotaProperties do
  @moduledoc """
  Represents the properties needed for quota operations.

  ## Attributes

  - quotaMode (String.t): Quota mode for this operation. Defaults to: `null`.
    - Enum - one of [ACQUIRE, ACQUIRE_BEST_EFFORT, CHECK, RELEASE]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :quotaMode => any()
        }

  field(:quotaMode)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.QuotaProperties do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.QuotaProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.QuotaProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
