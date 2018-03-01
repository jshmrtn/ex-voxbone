# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.DataSource do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :contentType,
    :outputStream,
    :name,
    :inputStream
  ]

  @type t :: %__MODULE__{
          :contentType => String.t(),
          :outputStream => OutputStream,
          :name => String.t(),
          :inputStream => InputStream
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.DataSource do
  import Voxbone.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:outputStream, :struct, Voxbone.Model.OutputStream, options)
    |> deserialize(:inputStream, :struct, Voxbone.Model.InputStream, options)
  end
end
