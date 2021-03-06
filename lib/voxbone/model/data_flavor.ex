# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Model.DataFlavor do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :mimeType,
    :humanPresentableName,
    :primaryType,
    :subType,
    :mimeTypeSerializedObject,
    :defaultRepresentationClassAsString,
    :representationClassInputStream,
    :representationClassReader,
    :representationClassCharBuffer,
    :representationClassByteBuffer,
    :representationClassSerializable,
    :representationClassRemote,
    :flavorSerializedObjectType,
    :flavorRemoteObjectType,
    :flavorJavaFileListType,
    :flavorTextType
  ]

  @type t :: %__MODULE__{
          :mimeType => String.t(),
          :humanPresentableName => String.t(),
          :primaryType => String.t(),
          :subType => String.t(),
          :mimeTypeSerializedObject => boolean(),
          :defaultRepresentationClassAsString => String.t(),
          :representationClassInputStream => boolean(),
          :representationClassReader => boolean(),
          :representationClassCharBuffer => boolean(),
          :representationClassByteBuffer => boolean(),
          :representationClassSerializable => boolean(),
          :representationClassRemote => boolean(),
          :flavorSerializedObjectType => boolean(),
          :flavorRemoteObjectType => boolean(),
          :flavorJavaFileListType => boolean(),
          :flavorTextType => boolean()
        }
end

defimpl Poison.Decoder, for: Voxbone.Model.DataFlavor do
  def decode(value, _options) do
    value
  end
end
