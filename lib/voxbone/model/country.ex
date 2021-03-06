# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.Country do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :countryCodeA3,
    :countryName,
    :phoneCode,
    :hasStates,
    :hasRegulationRequirement
  ]

  @type t :: %__MODULE__{
          :countryCodeA3 => String.t(),
          :countryName => String.t(),
          :phoneCode => integer(),
          :hasStates => boolean(),
          :hasRegulationRequirement => boolean()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.Country do
  def decode(value, _options) do
    value
  end
end
