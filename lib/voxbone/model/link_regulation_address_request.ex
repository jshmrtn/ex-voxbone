# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.LinkRegulationAddressRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :didIds,
    :addressId
  ]

  @type t :: %__MODULE__{
          :didIds => [integer()],
          :addressId => integer()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.LinkRegulationAddressRequest do
  def decode(value, _options) do
    value
  end
end
