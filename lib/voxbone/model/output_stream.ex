# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.OutputStream do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct []

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: Voxbone.Model.OutputStream do
  def decode(value, _options) do
    value
  end
end
