# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.CheckoutCartResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :status,
    :productCheckoutList
  ]

  @type t :: %__MODULE__{
          :status => String.t(),
          :productCheckoutList => [ProductCheckout]
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.CheckoutCartResponse do
  import Voxbone.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:productCheckoutList, :list, Voxbone.Model.ProductCheckout, options)
  end
end
