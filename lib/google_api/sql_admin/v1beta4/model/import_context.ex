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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.ImportContext do
  @moduledoc """
  Database instance import context.

  ## Attributes

  - csvImportOptions (ImportContextCsvImportOptions):  Defaults to: `null`.
  - database (String.t): The target database for the import. If fileType is SQL, this field is required only if the import file does not specify a database, and is overridden by any database specification in the import file. If fileType is CSV, one database must be specified. Defaults to: `null`.
  - fileType (String.t): The file type for the specified uri. SQL: The file contains SQL statements. CSV: The file contains CSV data. Importing CSV data using the Cloud SQL Admin API is not supported for PostgreSQL instances. Defaults to: `null`.
  - importUser (String.t): The PostgreSQL user for this import operation. Defaults to cloudsqlsuperuser. PostgreSQL instances only. Defaults to: `null`.
  - kind (String.t): This is always sql#importContext. Defaults to: `null`.
  - uri (String.t): Path to the import file in Cloud Storage, in the form gs://bucketName/fileName. Compressed gzip files (.gz) are supported when fileType is SQL. The instance must have write permissions to the bucket and read access to the file. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :csvImportOptions => GoogleApi.SQLAdmin.V1beta4.Model.ImportContextCsvImportOptions.t(),
          :database => any(),
          :fileType => any(),
          :importUser => any(),
          :kind => any(),
          :uri => any()
        }

  field(:csvImportOptions, as: GoogleApi.SQLAdmin.V1beta4.Model.ImportContextCsvImportOptions)
  field(:database)
  field(:fileType)
  field(:importUser)
  field(:kind)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.ImportContext do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.ImportContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.ImportContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end