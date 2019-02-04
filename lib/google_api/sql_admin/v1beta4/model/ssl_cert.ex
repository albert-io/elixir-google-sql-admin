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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.SslCert do
  @moduledoc """
  SslCerts Resource

  ## Attributes

  - cert (String.t): PEM representation. Defaults to: `null`.
  - certSerialNumber (String.t): Serial number, as extracted from the certificate. Defaults to: `null`.
  - commonName (String.t): User supplied name. Constrained to [a-zA-Z.-_ ]+. Defaults to: `null`.
  - createTime (DateTime.t): The time when the certificate was created in RFC 3339 format, for example 2012-11-15T16:19:00.094Z Defaults to: `null`.
  - expirationTime (DateTime.t): The time when the certificate expires in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. Defaults to: `null`.
  - instance (String.t): Name of the database instance. Defaults to: `null`.
  - kind (String.t): This is always sql#sslCert. Defaults to: `null`.
  - selfLink (String.t): The URI of this resource. Defaults to: `null`.
  - sha1Fingerprint (String.t): Sha1 Fingerprint. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cert => any(),
          :certSerialNumber => any(),
          :commonName => any(),
          :createTime => DateTime.t(),
          :expirationTime => DateTime.t(),
          :instance => any(),
          :kind => any(),
          :selfLink => any(),
          :sha1Fingerprint => any()
        }

  field(:cert)
  field(:certSerialNumber)
  field(:commonName)
  field(:createTime, as: DateTime)
  field(:expirationTime, as: DateTime)
  field(:instance)
  field(:kind)
  field(:selfLink)
  field(:sha1Fingerprint)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.SslCert do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.SslCert.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.SslCert do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end