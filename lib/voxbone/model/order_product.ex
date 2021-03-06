# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.OrderProduct do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :orderProductId,
    :productType,
    :productDescription,
    :quantity,
    :didgroupId
  ]

  @type t :: %__MODULE__{
          :orderProductId => integer(),
          :productType => String.t(),
          :productDescription => String.t(),
          :quantity => integer(),
          :didgroupId => integer()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.OrderProduct do
  def decode(value, _options) do
    value
  end
end
