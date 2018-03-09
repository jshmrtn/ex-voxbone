# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.ListPopResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :pops
  ]

  @type t :: %__MODULE__{
          :pops => [Pop]
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.ListPopResponse do
  import Voxbone.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:pops, :list, Voxbone.Model.Pop, options)
  end
end