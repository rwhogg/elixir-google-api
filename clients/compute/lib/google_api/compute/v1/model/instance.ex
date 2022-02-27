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

defmodule GoogleApi.Compute.V1.Model.Instance do
  @moduledoc """
  Represents an Instance resource. An instance is a virtual machine that is hosted on Google Cloud Platform. For more information, read Virtual Machine Instances.

  ## Attributes

  *   `advancedMachineFeatures` (*type:* `GoogleApi.Compute.V1.Model.AdvancedMachineFeatures.t`, *default:* `nil`) - Controls for advanced machine-related behavior features.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Full or partial URL of the machine type resource to use for this instance, in the format: zones/zone/machineTypes/machine-type. This is provided by the client when the instance is created. For example, the following is a valid partial url to a predefined machine type: zones/us-central1-f/machineTypes/n1-standard-1 To create a custom machine type, provide a URL to a machine type in the following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24, etc), and MEMORY is the total memory for this instance. Memory must be a multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB): zones/zone/machineTypes/custom-CPUS-MEMORY For example: zones/us-central1-f/machineTypes/custom-4-5120 For a full list of restrictions, read the Specifications for custom machine types.
  *   `tags` (*type:* `GoogleApi.Compute.V1.Model.Tags.t`, *default:* `nil`) - Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. Multiple tags can be specified via the 'tags.items' field.
  *   `params` (*type:* `GoogleApi.Compute.V1.Model.InstanceParams.t`, *default:* `nil`) - Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  *   `lastSuspendedTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Last suspended timestamp in RFC3339 text format.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional, human-readable explanation of the status.
  *   `serviceAccounts` (*type:* `list(GoogleApi.Compute.V1.Model.ServiceAccount.t)`, *default:* `nil`) - A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported. Service accounts generate access tokens that can be accessed through the metadata server and used to authenticate applications on the instance. See Service Accounts for more information.
  *   `guestAccelerators` (*type:* `list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t)`, *default:* `nil`) - A list of the type and count of accelerator cards attached to the instance.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Reserved for future use.
  *   `metadata` (*type:* `GoogleApi.Compute.V1.Model.Metadata.t`, *default:* `nil`) - The metadata key/value pairs assigned to this instance. This includes custom metadata and predefined keys.
  *   `confidentialInstanceConfig` (*type:* `GoogleApi.Compute.V1.Model.ConfidentialInstanceConfig.t`, *default:* `nil`) - 
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the zone where the instance resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `networkPerformanceConfig` (*type:* `GoogleApi.Compute.V1.Model.NetworkPerformanceConfig.t`, *default:* `nil`) - 
  *   `sourceMachineImageEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - Source machine image encryption key when creating an instance from a machine image.
  *   `kind` (*type:* `String.t`, *default:* `compute#instance`) - [Output Only] Type of the resource. Always compute#instance for instances.
  *   `shieldedInstanceConfig` (*type:* `GoogleApi.Compute.V1.Model.ShieldedInstanceConfig.t`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `displayDevice` (*type:* `GoogleApi.Compute.V1.Model.DisplayDevice.t`, *default:* `nil`) - Enables display device for the instance.
  *   `startRestricted` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Whether a VM has been restricted for start because Compute Engine has detected suspicious activity.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Specifies a fingerprint for this resource, which is essentially a hash of the instance's contents and used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update the instance. You must always provide an up-to-date fingerprint hash in order to update the instance. To see the latest fingerprint, make get() request to the instance.
  *   `networkInterfaces` (*type:* `list(GoogleApi.Compute.V1.Model.NetworkInterface.t)`, *default:* `nil`) - An array of network configurations for this instance. These specify how interfaces are configured to interact with other network services, such as connecting to the internet. Multiple interfaces are supported per instance.
  *   `sourceMachineImage` (*type:* `String.t`, *default:* `nil`) - Source machine image
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - Specifies the hostname of the instance. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the instance. One of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. For more information about the status of the instance, see Instance life cycle.
  *   `deletionProtection` (*type:* `boolean()`, *default:* `nil`) - Whether the resource should be protected against deletion.
  *   `resourcePolicies` (*type:* `list(String.t)`, *default:* `nil`) - Resource policies applied to this instance.
  *   `disks` (*type:* `list(GoogleApi.Compute.V1.Model.AttachedDisk.t)`, *default:* `nil`) - Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  *   `privateIpv6GoogleAccess` (*type:* `String.t`, *default:* `nil`) - The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  *   `shieldedInstanceIntegrityPolicy` (*type:* `GoogleApi.Compute.V1.Model.ShieldedInstanceIntegrityPolicy.t`, *default:* `nil`) - 
  *   `lastStopTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Last stop timestamp in RFC3339 text format.
  *   `minCpuPlatform` (*type:* `String.t`, *default:* `nil`) - Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge".
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - A fingerprint for this request, which is essentially a hash of the label's contents and used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels. To see the latest fingerprint, make get() request to the instance.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `canIpForward` (*type:* `boolean()`, *default:* `nil`) - Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes. For more information, see Enabling IP Forwarding .
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels to apply to this instance. These can be later modified by the setLabels method.
  *   `lastStartTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Last start timestamp in RFC3339 text format.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for this resource.
  *   `reservationAffinity` (*type:* `GoogleApi.Compute.V1.Model.ReservationAffinity.t`, *default:* `nil`) - Specifies the reservations that this instance can consume from.
  *   `cpuPlatform` (*type:* `String.t`, *default:* `nil`) - [Output Only] The CPU platform used by this instance.
  *   `scheduling` (*type:* `GoogleApi.Compute.V1.Model.Scheduling.t`, *default:* `nil`) - Sets the scheduling options for this instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advancedMachineFeatures =>
            GoogleApi.Compute.V1.Model.AdvancedMachineFeatures.t() | nil,
          :machineType => String.t() | nil,
          :tags => GoogleApi.Compute.V1.Model.Tags.t() | nil,
          :params => GoogleApi.Compute.V1.Model.InstanceParams.t() | nil,
          :lastSuspendedTimestamp => String.t() | nil,
          :statusMessage => String.t() | nil,
          :serviceAccounts => list(GoogleApi.Compute.V1.Model.ServiceAccount.t()) | nil,
          :guestAccelerators => list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t()) | nil,
          :satisfiesPzs => boolean() | nil,
          :metadata => GoogleApi.Compute.V1.Model.Metadata.t() | nil,
          :confidentialInstanceConfig =>
            GoogleApi.Compute.V1.Model.ConfidentialInstanceConfig.t() | nil,
          :zone => String.t() | nil,
          :description => String.t() | nil,
          :networkPerformanceConfig =>
            GoogleApi.Compute.V1.Model.NetworkPerformanceConfig.t() | nil,
          :sourceMachineImageEncryptionKey =>
            GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t() | nil,
          :kind => String.t() | nil,
          :shieldedInstanceConfig => GoogleApi.Compute.V1.Model.ShieldedInstanceConfig.t() | nil,
          :name => String.t() | nil,
          :displayDevice => GoogleApi.Compute.V1.Model.DisplayDevice.t() | nil,
          :startRestricted => boolean() | nil,
          :fingerprint => String.t() | nil,
          :networkInterfaces => list(GoogleApi.Compute.V1.Model.NetworkInterface.t()) | nil,
          :sourceMachineImage => String.t() | nil,
          :hostname => String.t() | nil,
          :status => String.t() | nil,
          :deletionProtection => boolean() | nil,
          :resourcePolicies => list(String.t()) | nil,
          :disks => list(GoogleApi.Compute.V1.Model.AttachedDisk.t()) | nil,
          :privateIpv6GoogleAccess => String.t() | nil,
          :shieldedInstanceIntegrityPolicy =>
            GoogleApi.Compute.V1.Model.ShieldedInstanceIntegrityPolicy.t() | nil,
          :lastStopTimestamp => String.t() | nil,
          :minCpuPlatform => String.t() | nil,
          :labelFingerprint => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :id => String.t() | nil,
          :canIpForward => boolean() | nil,
          :labels => map() | nil,
          :lastStartTimestamp => String.t() | nil,
          :selfLink => String.t() | nil,
          :reservationAffinity => GoogleApi.Compute.V1.Model.ReservationAffinity.t() | nil,
          :cpuPlatform => String.t() | nil,
          :scheduling => GoogleApi.Compute.V1.Model.Scheduling.t() | nil
        }

  field(:advancedMachineFeatures, as: GoogleApi.Compute.V1.Model.AdvancedMachineFeatures)
  field(:machineType)
  field(:tags, as: GoogleApi.Compute.V1.Model.Tags)
  field(:params, as: GoogleApi.Compute.V1.Model.InstanceParams)
  field(:lastSuspendedTimestamp)
  field(:statusMessage)
  field(:serviceAccounts, as: GoogleApi.Compute.V1.Model.ServiceAccount, type: :list)
  field(:guestAccelerators, as: GoogleApi.Compute.V1.Model.AcceleratorConfig, type: :list)
  field(:satisfiesPzs)
  field(:metadata, as: GoogleApi.Compute.V1.Model.Metadata)
  field(:confidentialInstanceConfig, as: GoogleApi.Compute.V1.Model.ConfidentialInstanceConfig)
  field(:zone)
  field(:description)
  field(:networkPerformanceConfig, as: GoogleApi.Compute.V1.Model.NetworkPerformanceConfig)
  field(:sourceMachineImageEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:kind)
  field(:shieldedInstanceConfig, as: GoogleApi.Compute.V1.Model.ShieldedInstanceConfig)
  field(:name)
  field(:displayDevice, as: GoogleApi.Compute.V1.Model.DisplayDevice)
  field(:startRestricted)
  field(:fingerprint)
  field(:networkInterfaces, as: GoogleApi.Compute.V1.Model.NetworkInterface, type: :list)
  field(:sourceMachineImage)
  field(:hostname)
  field(:status)
  field(:deletionProtection)
  field(:resourcePolicies, type: :list)
  field(:disks, as: GoogleApi.Compute.V1.Model.AttachedDisk, type: :list)
  field(:privateIpv6GoogleAccess)

  field(:shieldedInstanceIntegrityPolicy,
    as: GoogleApi.Compute.V1.Model.ShieldedInstanceIntegrityPolicy
  )

  field(:lastStopTimestamp)
  field(:minCpuPlatform)
  field(:labelFingerprint)
  field(:creationTimestamp)
  field(:id)
  field(:canIpForward)
  field(:labels, type: :map)
  field(:lastStartTimestamp)
  field(:selfLink)
  field(:reservationAffinity, as: GoogleApi.Compute.V1.Model.ReservationAffinity)
  field(:cpuPlatform)
  field(:scheduling, as: GoogleApi.Compute.V1.Model.Scheduling)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Instance do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
