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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.CloneContext do
  @moduledoc """
  Database instance clone context.

  ## Attributes

  - binLogCoordinates (BinLogCoordinates): Binary log coordinates, if specified, identify the position up to which the source instance should be cloned. If not specified, the source instance is cloned up to the most recent binary log coordinates. Defaults to: `null`.
  - destinationInstanceName (String.t): Name of the Cloud SQL instance to be created as a clone. Defaults to: `null`.
  - kind (String.t): This is always sql#cloneContext. Defaults to: `null`.
  - pitrTimestampMs (String.t): Reserved for future use. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binLogCoordinates => GoogleApi.SQLAdmin.V1beta4.Model.BinLogCoordinates.t(),
          :destinationInstanceName => any(),
          :kind => any(),
          :pitrTimestampMs => any()
        }

  field(:binLogCoordinates, as: GoogleApi.SQLAdmin.V1beta4.Model.BinLogCoordinates)
  field(:destinationInstanceName)
  field(:kind)
  field(:pitrTimestampMs)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.CloneContext do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.CloneContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.CloneContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end