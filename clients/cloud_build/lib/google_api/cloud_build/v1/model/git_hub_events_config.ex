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

defmodule GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig do
  @moduledoc """
  GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received.

  ## Attributes

  *   `enterpriseConfigResourceName` (*type:* `String.t`, *default:* `nil`) - Optional. The resource name of the github enterprise config that should be applied to this installation. For example: "projects/{$project_id}/githubEnterpriseConfigs/{$config_id}"
  *   `installationId` (*type:* `String.t`, *default:* `nil`) - The installationID that emits the GitHub event.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the repository. For example: The name for https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  *   `owner` (*type:* `String.t`, *default:* `nil`) - Owner of the repository. For example: The owner for https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  *   `pullRequest` (*type:* `GoogleApi.CloudBuild.V1.Model.PullRequestFilter.t`, *default:* `nil`) - filter to match changes in pull requests.
  *   `push` (*type:* `GoogleApi.CloudBuild.V1.Model.PushFilter.t`, *default:* `nil`) - filter to match changes in refs like branches, tags.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enterpriseConfigResourceName => String.t() | nil,
          :installationId => String.t() | nil,
          :name => String.t() | nil,
          :owner => String.t() | nil,
          :pullRequest => GoogleApi.CloudBuild.V1.Model.PullRequestFilter.t() | nil,
          :push => GoogleApi.CloudBuild.V1.Model.PushFilter.t() | nil
        }

  field(:enterpriseConfigResourceName)
  field(:installationId)
  field(:name)
  field(:owner)
  field(:pullRequest, as: GoogleApi.CloudBuild.V1.Model.PullRequestFilter)
  field(:push, as: GoogleApi.CloudBuild.V1.Model.PushFilter)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
