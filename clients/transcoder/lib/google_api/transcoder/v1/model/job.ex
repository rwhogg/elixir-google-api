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

defmodule GoogleApi.Transcoder.V1.Model.Job do
  @moduledoc """
  Transcoding job resource.

  ## Attributes

  *   `config` (*type:* `GoogleApi.Transcoder.V1.Model.JobConfig.t`, *default:* `nil`) - The configuration for this job.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the job was created.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the transcoding finished.
  *   `error` (*type:* `GoogleApi.Transcoder.V1.Model.Status.t`, *default:* `nil`) - Output only. An error object that describes the reason for the failure. This property is always present when `state` is `FAILED`.
  *   `inputUri` (*type:* `String.t`, *default:* `nil`) - Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with this job. You can use these to organize and group your jobs.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  *   `outputUri` (*type:* `String.t`, *default:* `nil`) - Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the transcoding started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the job.
  *   `templateId` (*type:* `String.t`, *default:* `nil`) - Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`. Preset Transcoder templates: - `preset/{preset_id}` - User defined JobTemplate: `{job_template_id}`
  *   `ttlAfterCompletionDays` (*type:* `integer()`, *default:* `nil`) - Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.Transcoder.V1.Model.JobConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :error => GoogleApi.Transcoder.V1.Model.Status.t() | nil,
          :inputUri => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :outputUri => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :templateId => String.t() | nil,
          :ttlAfterCompletionDays => integer() | nil
        }

  field(:config, as: GoogleApi.Transcoder.V1.Model.JobConfig)
  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:error, as: GoogleApi.Transcoder.V1.Model.Status)
  field(:inputUri)
  field(:labels, type: :map)
  field(:name)
  field(:outputUri)
  field(:startTime, as: DateTime)
  field(:state)
  field(:templateId)
  field(:ttlAfterCompletionDays)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.Job do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
