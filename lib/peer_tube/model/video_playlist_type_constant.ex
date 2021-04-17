# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoPlaylistTypeConstant do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"label"
  ]

  @type t :: %__MODULE__{
    :"id" => PeerTube.Model.VideoPlaylistTypeSet.t | nil,
    :"label" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoPlaylistTypeConstant do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"id", :struct, PeerTube.Model.VideoPlaylistTypeSet, options)
  end
end
