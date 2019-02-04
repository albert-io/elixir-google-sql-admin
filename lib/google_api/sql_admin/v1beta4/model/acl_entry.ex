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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.AclEntry do
  @moduledoc """
  An entry for an Access Control list.

  ## Attributes

  - expirationTime (DateTime.t): The time when this access control entry expires in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. Defaults to: `null`.
  - kind (String.t): This is always sql#aclEntry. Defaults to: `null`.
  - name (String.t): An optional label to identify this entry. Defaults to: `null`.
  - value (String.t): The whitelisted value for the access control list. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expirationTime => DateTime.t(),
          :kind => any(),
          :name => any(),
          :value => any()
        }

  field(:expirationTime, as: DateTime)
  field(:kind)
  field(:name)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.AclEntry do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.AclEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.AclEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end