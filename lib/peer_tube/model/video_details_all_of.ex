# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoDetailsAllOf do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"descriptionPath",
    :"support",
    :"channel",
    :"account",
    :"tags",
    :"files",
    :"commentsEnabled",
    :"downloadEnabled",
    :"trackerUrls",
    :"streamingPlaylists"
  ]

  @type t :: %__MODULE__{
    :"descriptionPath" => String.t | nil,
    :"support" => String.t | nil,
    :"channel" => PeerTube.Model.VideoChannel.t | nil,
    :"account" => PeerTube.Model.Account.t | nil,
    :"tags" => [String.t] | nil,
    :"files" => [PeerTube.Model.VideoFile.t] | nil,
    :"commentsEnabled" => boolean() | nil,
    :"downloadEnabled" => boolean() | nil,
    :"trackerUrls" => [String.t] | nil,
    :"streamingPlaylists" => [PeerTube.Model.VideoStreamingPlaylists.t] | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoDetailsAllOf do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"channel", :struct, PeerTube.Model.VideoChannel, options)
    |> deserialize(:"account", :struct, PeerTube.Model.Account, options)
    |> deserialize(:"files", :list, PeerTube.Model.VideoFile, options)
    |> deserialize(:"streamingPlaylists", :list, PeerTube.Model.VideoStreamingPlaylists, options)
  end
end
