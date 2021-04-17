# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.Notification do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"type",
    :"read",
    :"video",
    :"videoImport",
    :"comment",
    :"videoAbuse",
    :"videoBlacklist",
    :"account",
    :"actorFollow",
    :"createdAt",
    :"updatedAt"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"type" => integer() | nil,
    :"read" => boolean() | nil,
    :"video" => VideoInfo | nil,
    :"videoImport" => PeerTube.Model.NotificationVideoImport.t | nil,
    :"comment" => PeerTube.Model.NotificationComment.t | nil,
    :"videoAbuse" => PeerTube.Model.NotificationVideoAbuse.t | nil,
    :"videoBlacklist" => PeerTube.Model.NotificationVideoAbuse.t | nil,
    :"account" => ActorInfo | nil,
    :"actorFollow" => PeerTube.Model.NotificationActorFollow.t | nil,
    :"createdAt" => DateTime.t | nil,
    :"updatedAt" => DateTime.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.Notification do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"video", :struct, PeerTube.Model.VideoInfo, options)
    |> deserialize(:"videoImport", :struct, PeerTube.Model.NotificationVideoImport, options)
    |> deserialize(:"comment", :struct, PeerTube.Model.NotificationComment, options)
    |> deserialize(:"videoAbuse", :struct, PeerTube.Model.NotificationVideoAbuse, options)
    |> deserialize(:"videoBlacklist", :struct, PeerTube.Model.NotificationVideoAbuse, options)
    |> deserialize(:"account", :struct, PeerTube.Model.ActorInfo, options)
    |> deserialize(:"actorFollow", :struct, PeerTube.Model.NotificationActorFollow, options)
  end
end
