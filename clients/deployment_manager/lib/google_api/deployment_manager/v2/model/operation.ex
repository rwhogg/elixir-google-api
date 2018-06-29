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

defmodule GoogleApi.DeploymentManager.V2.Model.Operation do
  @moduledoc """
  An Operation resource, used to manage asynchronous API requests. (&#x3D;&#x3D; resource_for v1.globalOperations &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for beta.globalOperations &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.regionOperations &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for beta.regionOperations &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.zoneOperations &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for beta.zoneOperations &#x3D;&#x3D;)

  ## Attributes

  - clientOperationId (String.t): [Output Only] The value of &#x60;requestId&#x60; if you provided it in the request. Not present otherwise. Defaults to: `null`.
  - creationTimestamp (String.t): [Deprecated] This field is deprecated. Defaults to: `null`.
  - description (String.t): [Output Only] A textual description of the operation, which is set when the operation is created. Defaults to: `null`.
  - endTime (String.t): [Output Only] The time that this operation was completed. This value is in RFC3339 text format. Defaults to: `null`.
  - error (OperationError):  Defaults to: `null`.
  - httpErrorMessage (String.t): [Output Only] If the operation fails, this field contains the HTTP error message that was returned, such as NOT FOUND. Defaults to: `null`.
  - httpErrorStatusCode (integer()): [Output Only] If the operation fails, this field contains the HTTP error status code that was returned. For example, a 404 means the resource was not found. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - insertTime (String.t): [Output Only] The time that this operation was requested. This value is in RFC3339 text format. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#operation for Operation resources. Defaults to: `null`.
  - name (String.t): [Output Only] Name of the resource. Defaults to: `null`.
  - operationType (String.t): [Output Only] The type of operation, such as insert, update, or delete, and so on. Defaults to: `null`.
  - progress (integer()): [Output Only] An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess when the operation will be complete. This number should monotonically increase as the operation progresses. Defaults to: `null`.
  - region (String.t): [Output Only] The URL of the region where the operation resides. Only available when performing regional operations. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - startTime (String.t): [Output Only] The time that this operation was started by the server. This value is in RFC3339 text format. Defaults to: `null`.
  - status (String.t): [Output Only] The status of the operation, which can be one of the following: PENDING, RUNNING, or DONE. Defaults to: `null`.
  - statusMessage (String.t): [Output Only] An optional textual description of the current status of the operation. Defaults to: `null`.
  - targetId (String.t): [Output Only] The unique target ID, which identifies a specific incarnation of the target resource. Defaults to: `null`.
  - targetLink (String.t): [Output Only] The URL of the resource that the operation modifies. For operations related to creating a snapshot, this points to the persistent disk that the snapshot was created from. Defaults to: `null`.
  - user (String.t): [Output Only] User who requested the operation, for example: user@example.com. Defaults to: `null`.
  - warnings ([OperationWarnings]): [Output Only] If warning messages are generated during processing of the operation, this field will be populated. Defaults to: `null`.
  - zone (String.t): [Output Only] The URL of the zone where the operation resides. Only available when performing per-zone operations. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientOperationId => any(),
          :creationTimestamp => any(),
          :description => any(),
          :endTime => any(),
          :error => GoogleApi.DeploymentManager.V2.Model.OperationError.t(),
          :httpErrorMessage => any(),
          :httpErrorStatusCode => any(),
          :id => any(),
          :insertTime => any(),
          :kind => any(),
          :name => any(),
          :operationType => any(),
          :progress => any(),
          :region => any(),
          :selfLink => any(),
          :startTime => any(),
          :status => any(),
          :statusMessage => any(),
          :targetId => any(),
          :targetLink => any(),
          :user => any(),
          :warnings => list(GoogleApi.DeploymentManager.V2.Model.OperationWarnings.t()),
          :zone => any()
        }

  field(:clientOperationId)
  field(:creationTimestamp)
  field(:description)
  field(:endTime)
  field(:error, as: GoogleApi.DeploymentManager.V2.Model.OperationError)
  field(:httpErrorMessage)
  field(:httpErrorStatusCode)
  field(:id)
  field(:insertTime)
  field(:kind)
  field(:name)
  field(:operationType)
  field(:progress)
  field(:region)
  field(:selfLink)
  field(:startTime)
  field(:status)
  field(:statusMessage)
  field(:targetId)
  field(:targetLink)
  field(:user)
  field(:warnings, as: GoogleApi.DeploymentManager.V2.Model.OperationWarnings, type: :list)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.Operation do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
