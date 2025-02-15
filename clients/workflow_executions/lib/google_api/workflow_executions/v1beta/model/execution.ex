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

defmodule GoogleApi.WorkflowExecutions.V1beta.Model.Execution do
  @moduledoc """
  A running instance of a [Workflow](/workflows/docs/reference/rest/v1beta/projects.locations.workflows).

  ## Attributes

  *   `argument` (*type:* `String.t`, *default:* `nil`) - Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\\"firstName\\":\\"FIRST\\",\\"lastName\\":\\"LAST\\"}"}'`
  *   `callLogLevel` (*type:* `String.t`, *default:* `nil`) - The call logging level associated to this execution.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Marks the end of execution, successful or not.
  *   `error` (*type:* `GoogleApi.WorkflowExecutions.V1beta.Model.Error.t`, *default:* `nil`) - Output only. The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  *   `result` (*type:* `String.t`, *default:* `nil`) - Output only. Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Marks the beginning of execution.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the execution.
  *   `workflowRevisionId` (*type:* `String.t`, *default:* `nil`) - Output only. Revision of the workflow this execution is using.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :argument => String.t() | nil,
          :callLogLevel => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :error => GoogleApi.WorkflowExecutions.V1beta.Model.Error.t() | nil,
          :name => String.t() | nil,
          :result => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :workflowRevisionId => String.t() | nil
        }

  field(:argument)
  field(:callLogLevel)
  field(:endTime, as: DateTime)
  field(:error, as: GoogleApi.WorkflowExecutions.V1beta.Model.Error)
  field(:name)
  field(:result)
  field(:startTime, as: DateTime)
  field(:state)
  field(:workflowRevisionId)
end

defimpl Poison.Decoder, for: GoogleApi.WorkflowExecutions.V1beta.Model.Execution do
  def decode(value, options) do
    GoogleApi.WorkflowExecutions.V1beta.Model.Execution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkflowExecutions.V1beta.Model.Execution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
