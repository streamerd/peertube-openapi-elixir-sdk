# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoStreamingPlaylists do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"type",
    :"playlistUrl",
    :"segmentsSha256Url",
    :"files",
    :"redundancies"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"type" => integer() | nil,
    :"playlistUrl" => String.t | nil,
    :"segmentsSha256Url" => String.t | nil,
    :"files" => [PeerTube.Model.VideoFile.t] | nil,
    :"redundancies" => [PeerTube.Model.VideoStreamingPlaylistsRedundancies.t] | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoStreamingPlaylists do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"files", :list, PeerTube.Model.VideoFile, options)
    |> deserialize(:"redundancies", :list, PeerTube.Model.VideoStreamingPlaylistsRedundancies, options)
  end
end

