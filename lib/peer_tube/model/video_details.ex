# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoDetails do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"uuid",
    :"isLive",
    :"createdAt",
    :"publishedAt",
    :"updatedAt",
    :"originallyPublishedAt",
    :"category",
    :"licence",
    :"language",
    :"privacy",
    :"description",
    :"duration",
    :"isLocal",
    :"name",
    :"thumbnailPath",
    :"previewPath",
    :"embedPath",
    :"views",
    :"likes",
    :"dislikes",
    :"nsfw",
    :"waitTranscoding",
    :"state",
    :"scheduledUpdate",
    :"blacklisted",
    :"blacklistedReason",
    :"account",
    :"channel",
    :"userHistory",
    :"descriptionPath",
    :"support",
    :"tags",
    :"files",
    :"commentsEnabled",
    :"downloadEnabled",
    :"trackerUrls",
    :"streamingPlaylists"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"uuid" => String.t | nil,
    :"isLive" => boolean() | nil,
    :"createdAt" => DateTime.t | nil,
    :"publishedAt" => DateTime.t | nil,
    :"updatedAt" => DateTime.t | nil,
    :"originallyPublishedAt" => DateTime.t | nil,
    :"category" => PeerTube.Model.VideoConstantNumber.t | nil,
    :"licence" => PeerTube.Model.VideoConstantNumber.t | nil,
    :"language" => PeerTube.Model.VideoConstantString.t | nil,
    :"privacy" => PeerTube.Model.VideoPrivacyConstant.t | nil,
    :"description" => String.t | nil,
    :"duration" => integer() | nil,
    :"isLocal" => boolean() | nil,
    :"name" => String.t | nil,
    :"thumbnailPath" => String.t | nil,
    :"previewPath" => String.t | nil,
    :"embedPath" => String.t | nil,
    :"views" => integer() | nil,
    :"likes" => integer() | nil,
    :"dislikes" => integer() | nil,
    :"nsfw" => boolean() | nil,
    :"waitTranscoding" => boolean() | nil,
    :"state" => PeerTube.Model.VideoStateConstant.t | nil,
    :"scheduledUpdate" => VideoScheduledUpdate | nil,
    :"blacklisted" => boolean() | nil,
    :"blacklistedReason" => String.t | nil,
    :"account" => PeerTube.Model.Account.t | nil,
    :"channel" => PeerTube.Model.VideoChannel.t | nil,
    :"userHistory" => PeerTube.Model.VideoUserHistory.t | nil,
    :"descriptionPath" => String.t | nil,
    :"support" => String.t | nil,
    :"tags" => [String.t] | nil,
    :"files" => [PeerTube.Model.VideoFile.t] | nil,
    :"commentsEnabled" => boolean() | nil,
    :"downloadEnabled" => boolean() | nil,
    :"trackerUrls" => [String.t] | nil,
    :"streamingPlaylists" => [PeerTube.Model.VideoStreamingPlaylists.t] | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoDetails do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"category", :struct, PeerTube.Model.VideoConstantNumber, options)
    |> deserialize(:"licence", :struct, PeerTube.Model.VideoConstantNumber, options)
    |> deserialize(:"language", :struct, PeerTube.Model.VideoConstantString, options)
    |> deserialize(:"privacy", :struct, PeerTube.Model.VideoPrivacyConstant, options)
    |> deserialize(:"state", :struct, PeerTube.Model.VideoStateConstant, options)
    |> deserialize(:"scheduledUpdate", :struct, PeerTube.Model.VideoScheduledUpdate, options)
    |> deserialize(:"account", :struct, PeerTube.Model.Account, options)
    |> deserialize(:"channel", :struct, PeerTube.Model.VideoChannel, options)
    |> deserialize(:"userHistory", :struct, PeerTube.Model.VideoUserHistory, options)
    |> deserialize(:"files", :list, PeerTube.Model.VideoFile, options)
    |> deserialize(:"streamingPlaylists", :list, PeerTube.Model.VideoStreamingPlaylists, options)
  end
end

