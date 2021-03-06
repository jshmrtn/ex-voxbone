# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.ListVoiceUriResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :voiceUris,
    :resultCount
  ]

  @type t :: %__MODULE__{
          :voiceUris => [ListVoiceUri],
          :resultCount => integer()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.ListVoiceUriResponse do
  import Voxbone.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:voiceUris, :list, Voxbone.Model.ListVoiceUri, options)
  end
end
