# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.CallerId do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :cliFormat,
    :cliValue
  ]

  @type t :: %__MODULE__{
          :cliFormat => String.t(),
          :cliValue => String.t()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.CallerId do
  def decode(value, _options) do
    value
  end
end
