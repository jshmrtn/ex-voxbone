# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.SaveCapacityGroupRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :capacityGroup
  ]

  @type t :: %__MODULE__{
          :capacityGroup => SaveCapacityGroup
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.SaveCapacityGroupRequest do
  import Voxbone.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:capacityGroup, :struct, Voxbone.Model.SaveCapacityGroup, options)
  end
end
