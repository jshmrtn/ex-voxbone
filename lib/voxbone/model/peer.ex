# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.Peer do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :t38Enabled,
    :dtmf,
    :dtmfInbandMute,
    :codecs
  ]

  @type t :: %__MODULE__{
          :t38Enabled => String.t(),
          :dtmf => String.t(),
          :dtmfInbandMute => String.t(),
          :codecs => [String.t()]
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.Peer do
  def decode(value, _options) do
    value
  end
end
