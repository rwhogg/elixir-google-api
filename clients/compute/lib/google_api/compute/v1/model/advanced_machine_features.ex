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

defmodule GoogleApi.Compute.V1.Model.AdvancedMachineFeatures do
  @moduledoc """
  Specifies options for controlling advanced machine features. Options that would traditionally be configured in a BIOS belong here. Features that require operating system support may have corresponding entries in the GuestOsFeatures of an Image (e.g., whether or not the OS in the Image supports nested virtualization being enabled or disabled).

  ## Attributes

  *   `enableNestedVirtualization` (*type:* `boolean()`, *default:* `nil`) - Whether to enable nested virtualization or not (default is false).
  *   `enableUefiNetworking` (*type:* `boolean()`, *default:* `nil`) - Whether to enable UEFI networking for instance creation.
  *   `threadsPerCore` (*type:* `integer()`, *default:* `nil`) - The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableNestedVirtualization => boolean() | nil,
          :enableUefiNetworking => boolean() | nil,
          :threadsPerCore => integer() | nil
        }

  field(:enableNestedVirtualization)
  field(:enableUefiNetworking)
  field(:threadsPerCore)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AdvancedMachineFeatures do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AdvancedMachineFeatures.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AdvancedMachineFeatures do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
