# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.ListZipCodesResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :cityZipCodes,
    :resultCount
  ]

  @type t :: %__MODULE__{
          :cityZipCodes => [CityZipCode],
          :resultCount => integer()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.ListZipCodesResponse do
  import Voxbone.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:cityZipCodes, :list, Voxbone.Model.CityZipCode, options)
  end
end
