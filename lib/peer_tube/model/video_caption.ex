# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoCaption do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"language",
    :"captionPath"
  ]

  @type t :: %__MODULE__{
    :"language" => PeerTube.Model.VideoConstantString.t | nil,
    :"captionPath" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoCaption do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"language", :struct, PeerTube.Model.VideoConstantString, options)
  end
end

