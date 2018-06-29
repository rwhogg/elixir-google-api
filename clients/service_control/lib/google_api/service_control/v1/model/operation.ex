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

defmodule GoogleApi.ServiceControl.V1.Model.Operation do
  @moduledoc """
  Represents information regarding an operation.

  ## Attributes

  - consumerId (String.t): Identity of the consumer who is using the service. This field should be filled in for the operations initiated by a consumer, but not for service-initiated operations that are not related to a specific consumer.  This can be in one of the following formats:   project:&lt;project_id&gt;,   project_number:&lt;project_number&gt;,   api_key:&lt;api_key&gt;. Defaults to: `null`.
  - endTime (DateTime.t): End time of the operation. Required when the operation is used in ServiceController.Report, but optional when the operation is used in ServiceController.Check. Defaults to: `null`.
  - importance (String.t): DO NOT USE. This is an experimental field. Defaults to: `null`.
    - Enum - one of [LOW, HIGH, DEBUG]
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Labels describing the operation. Only the following labels are allowed:  - Labels describing monitored resources as defined in   the service configuration. - Default labels of metric values. When specified, labels defined in the   metric value override these default. - The following labels defined by Google Cloud Platform:     - &#x60;cloud.googleapis.com/location&#x60; describing the location where the        operation happened,     - &#x60;servicecontrol.googleapis.com/user_agent&#x60; describing the user agent        of the API request,     - &#x60;servicecontrol.googleapis.com/service_agent&#x60; describing the service        used to handle the API request (e.g. ESP),     - &#x60;servicecontrol.googleapis.com/platform&#x60; describing the platform        where the API is served, such as App Engine, Compute Engine, or        Kubernetes Engine. Defaults to: `null`.
  - logEntries ([LogEntry]): Represents information to be logged. Defaults to: `null`.
  - metricValueSets ([MetricValueSet]): Represents information about this operation. Each MetricValueSet corresponds to a metric defined in the service configuration. The data type used in the MetricValueSet must agree with the data type specified in the metric definition.  Within a single operation, it is not allowed to have more than one MetricValue instances that have the same metric names and identical label value combinations. If a request has such duplicated MetricValue instances, the entire request is rejected with an invalid argument error. Defaults to: `null`.
  - operationId (String.t): Identity of the operation. This must be unique within the scope of the service that generated the operation. If the service calls Check() and Report() on the same operation, the two calls should carry the same id.  UUID version 4 is recommended, though not required. In scenarios where an operation is computed from existing information and an idempotent id is desirable for deduplication purpose, UUID version 5 is recommended. See RFC 4122 for details. Defaults to: `null`.
  - operationName (String.t): Fully qualified name of the operation. Reserved for future use. Defaults to: `null`.
  - quotaProperties (QuotaProperties): Represents the properties needed for quota check. Applicable only if this operation is for a quota check request. If this is not specified, no quota check will be performed. Defaults to: `null`.
  - resourceContainer (String.t): DO NOT USE. This field is deprecated, use \&quot;resources\&quot; field instead. The resource name of the parent of a resource in the resource hierarchy.  This can be in one of the following formats:     - “projects/&lt;project-id or project-number&gt;”     - “folders/&lt;folder-id&gt;”     - “organizations/&lt;organization-id&gt;” Defaults to: `null`.
  - resources ([ResourceInfo]): The resources that are involved in the operation. The maximum supported number of entries in this field is 100. Defaults to: `null`.
  - startTime (DateTime.t): Required. Start time of the operation. Defaults to: `null`.
  - userLabels (%{optional(String.t) &#x3D;&gt; String.t}): User defined labels for the resource that this operation is associated with. Only a combination of 1000 user labels per consumer project are allowed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerId => any(),
          :endTime => DateTime.t(),
          :importance => any(),
          :labels => map(),
          :logEntries => list(GoogleApi.ServiceControl.V1.Model.LogEntry.t()),
          :metricValueSets => list(GoogleApi.ServiceControl.V1.Model.MetricValueSet.t()),
          :operationId => any(),
          :operationName => any(),
          :quotaProperties => GoogleApi.ServiceControl.V1.Model.QuotaProperties.t(),
          :resourceContainer => any(),
          :resources => list(GoogleApi.ServiceControl.V1.Model.ResourceInfo.t()),
          :startTime => DateTime.t(),
          :userLabels => map()
        }

  field(:consumerId)
  field(:endTime, as: DateTime)
  field(:importance)
  field(:labels, type: :map)
  field(:logEntries, as: GoogleApi.ServiceControl.V1.Model.LogEntry, type: :list)
  field(:metricValueSets, as: GoogleApi.ServiceControl.V1.Model.MetricValueSet, type: :list)
  field(:operationId)
  field(:operationName)
  field(:quotaProperties, as: GoogleApi.ServiceControl.V1.Model.QuotaProperties)
  field(:resourceContainer)
  field(:resources, as: GoogleApi.ServiceControl.V1.Model.ResourceInfo, type: :list)
  field(:startTime, as: DateTime)
  field(:userLabels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.Operation do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
