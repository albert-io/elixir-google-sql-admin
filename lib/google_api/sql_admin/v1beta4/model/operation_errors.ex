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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.OperationErrors do
  @moduledoc """
  Database instance operation errors list wrapper.

  ## Attributes

  - errors ([OperationError]): The list of errors encountered while processing this operation. Defaults to: `null`.
  - kind (String.t): This is always sql#operationErrors. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => list(GoogleApi.SQLAdmin.V1beta4.Model.OperationError.t()),
          :kind => any()
        }

  field(:errors, as: GoogleApi.SQLAdmin.V1beta4.Model.OperationError, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.OperationErrors do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.OperationErrors.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.OperationErrors do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end