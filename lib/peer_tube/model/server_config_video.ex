# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigVideo do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"image",
    :"file"
  ]

  @type t :: %__MODULE__{
    :"image" => PeerTube.Model.ServerConfigVideoImage.t | nil,
    :"file" => PeerTube.Model.ServerConfigVideoFile.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigVideo do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"image", :struct, PeerTube.Model.ServerConfigVideoImage, options)
    |> deserialize(:"file", :struct, PeerTube.Model.ServerConfigVideoFile, options)
  end
end

