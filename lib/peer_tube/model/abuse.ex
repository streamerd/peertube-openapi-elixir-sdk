# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.Abuse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"reason",
    :"predefinedReasons",
    :"reporterAccount",
    :"state",
    :"moderationComment",
    :"video",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"reason" => String.t | nil,
    :"predefinedReasons" => [String.t] | nil,
    :"reporterAccount" => PeerTube.Model.Account.t | nil,
    :"state" => PeerTube.Model.AbuseStateConstant.t | nil,
    :"moderationComment" => String.t | nil,
    :"video" => PeerTube.Model.AbuseVideo.t | nil,
    :"createdAt" => DateTime.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.Abuse do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"reporterAccount", :struct, PeerTube.Model.Account, options)
    |> deserialize(:"state", :struct, PeerTube.Model.AbuseStateConstant, options)
    |> deserialize(:"video", :struct, PeerTube.Model.AbuseVideo, options)
  end
end

