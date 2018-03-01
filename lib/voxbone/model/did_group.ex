# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.DidGroup do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :didGroupId,
    :countryCodeA3,
    :stateId,
    :didType,
    :cityName,
    :areaCode,
    :rateCenter,
    :stock,
    :setup100,
    :monthly100,
    :available,
    :regulationRequirement,
    :features
  ]

  @type t :: %__MODULE__{
          :didGroupId => integer(),
          :countryCodeA3 => String.t(),
          :stateId => integer(),
          :didType => String.t(),
          :cityName => String.t(),
          :areaCode => String.t(),
          :rateCenter => String.t(),
          :stock => integer(),
          :setup100 => integer(),
          :monthly100 => integer(),
          :available => boolean(),
          :regulationRequirement => RegulationRequirementModel,
          :features => [Feature]
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.DidGroup do
  import Voxbone.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :regulationRequirement,
      :struct,
      Voxbone.Model.RegulationRequirementModel,
      options
    )
    |> deserialize(:features, :list, Voxbone.Model.Feature, options)
  end
end
