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

defmodule GoogleApi.Spanner.V1.Model.ExecuteSqlRequest do
  @moduledoc """
  The request for ExecuteSql and
  ExecuteStreamingSql.

  ## Attributes

  *   `paramTypes` (*type:* `%{optional(String.t) => GoogleApi.Spanner.V1.Model.Type.t}`, *default:* `nil`) - It is not always possible for Cloud Spanner to infer the right SQL type
      from a JSON value.  For example, values of type `BYTES` and values
      of type `STRING` both appear in params as JSON strings.

      In these cases, `param_types` can be used to specify the exact
      SQL type for some or all of the SQL statement parameters. See the
      definition of Type for more information
      about SQL types.
  *   `params` (*type:* `map()`, *default:* `nil`) - Parameter names and values that bind to placeholders in the SQL string.

      A parameter placeholder consists of the `@` character followed by the
      parameter name (for example, `@firstName`). Parameter names must conform
      to the naming requirements of identifiers as specified at
      https://cloud.google.com/spanner/docs/lexical#identifiers.

      Parameters can appear anywhere that a literal value is expected.  The same
      parameter name can be used more than once, for example:

      `"WHERE id > @msg_id AND id < @msg_id + 100"`

      It is an error to execute a SQL statement with unbound parameters.
  *   `partitionToken` (*type:* `String.t`, *default:* `nil`) - If present, results will be restricted to the specified partition
      previously created using PartitionQuery().  There must be an exact
      match for the values of fields common to this message and the
      PartitionQueryRequest message used to create this partition_token.
  *   `queryMode` (*type:* `String.t`, *default:* `nil`) - Used to control the amount of debugging information returned in
      ResultSetStats. If partition_token is set, query_mode can only
      be set to QueryMode.NORMAL.
  *   `queryOptions` (*type:* `GoogleApi.Spanner.V1.Model.QueryOptions.t`, *default:* `nil`) - Query optimizer configuration to use for the given query.
  *   `resumeToken` (*type:* `String.t`, *default:* `nil`) - If this request is resuming a previously interrupted SQL statement
      execution, `resume_token` should be copied from the last
      PartialResultSet yielded before the interruption. Doing this
      enables the new SQL statement execution to resume where the last one left
      off. The rest of the request parameters must exactly match the
      request that yielded this token.
  *   `seqno` (*type:* `String.t`, *default:* `nil`) - A per-transaction sequence number used to identify this request. This field
      makes each request idempotent such that if the request is received multiple
      times, at most one will succeed.

      The sequence number must be monotonically increasing within the
      transaction. If a request arrives for the first time with an out-of-order
      sequence number, the transaction may be aborted. Replays of previously
      handled requests will yield the same response as the first execution.

      Required for DML statements. Ignored for queries.
  *   `sql` (*type:* `String.t`, *default:* `nil`) - Required. The SQL string.
  *   `transaction` (*type:* `GoogleApi.Spanner.V1.Model.TransactionSelector.t`, *default:* `nil`) - The transaction to use.

      For queries, if none is provided, the default is a temporary read-only
      transaction with strong concurrency.

      Standard DML statements require a read-write transaction. To protect
      against replays, single-use transactions are not supported.  The caller
      must either supply an existing transaction ID or begin a new transaction.

      Partitioned DML requires an existing Partitioned DML transaction ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :paramTypes => %{optional(String.t()) => GoogleApi.Spanner.V1.Model.Type.t()},
          :params => map(),
          :partitionToken => String.t(),
          :queryMode => String.t(),
          :queryOptions => GoogleApi.Spanner.V1.Model.QueryOptions.t(),
          :resumeToken => String.t(),
          :seqno => String.t(),
          :sql => String.t(),
          :transaction => GoogleApi.Spanner.V1.Model.TransactionSelector.t()
        }

  field(:paramTypes, as: GoogleApi.Spanner.V1.Model.Type, type: :map)
  field(:params, type: :map)
  field(:partitionToken)
  field(:queryMode)
  field(:queryOptions, as: GoogleApi.Spanner.V1.Model.QueryOptions)
  field(:resumeToken)
  field(:seqno)
  field(:sql)
  field(:transaction, as: GoogleApi.Spanner.V1.Model.TransactionSelector)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ExecuteSqlRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ExecuteSqlRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ExecuteSqlRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
