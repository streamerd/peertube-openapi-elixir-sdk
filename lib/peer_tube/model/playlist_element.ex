# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.PlaylistElement do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"position",
    :"startTimestamp",
    :"stopTimestamp",
    :"video"
  ]

  @type t :: %__MODULE__{
    :"position" => integer() | nil,
    :"startTimestamp" => integer() | nil,
    :"stopTimestamp" => integer() | nil,
    :"video" => Video | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.PlaylistElement do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"video", :struct, PeerTube.Model.Video, options)
  end
end

