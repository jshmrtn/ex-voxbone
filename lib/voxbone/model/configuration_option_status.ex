# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.ConfigurationOptionStatus do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :configOption,
    :numberUpdated
  ]

  @type t :: %__MODULE__{
          :configOption => String.t(),
          :numberUpdated => integer()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.ConfigurationOptionStatus do
  def decode(value, _options) do
    value
  end
end
