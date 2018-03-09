# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.CapacityCartItem do
  @moduledoc """
  CapacityCartItem corresponds to capacity (VoxTRUNK channels). Only one capacityCartItem can be added per request and capacity must be ordered in multiple of 10.
  """

  @derive [Poison.Encoder]
  defstruct [
    :zone,
    :quantity
  ]

  @type t :: %__MODULE__{
          :zone => String.t(),
          :quantity => integer()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.CapacityCartItem do
  def decode(value, _options) do
    value
  end
end