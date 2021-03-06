# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.Trunk do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :trunkId,
    :zone,
    :capacity,
    :description,
    :countDidsOnTrunk
  ]

  @type t :: %__MODULE__{
          :trunkId => integer(),
          :zone => String.t(),
          :capacity => integer(),
          :description => String.t(),
          :countDidsOnTrunk => integer()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.Trunk do
  def decode(value, _options) do
    value
  end
end
