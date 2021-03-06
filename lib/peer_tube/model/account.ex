# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.Account do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"url",
    :"name",
    :"host",
    :"followingCount",
    :"followersCount",
    :"createdAt",
    :"updatedAt",
    :"avatar",
    :"userId",
    :"displayName",
    :"description"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"url" => String.t | nil,
    :"name" => String.t | nil,
    :"host" => String.t | nil,
    :"followingCount" => integer() | nil,
    :"followersCount" => integer() | nil,
    :"createdAt" => DateTime.t | nil,
    :"updatedAt" => DateTime.t | nil,
    :"avatar" => PeerTube.Model.ActorImage.t | nil,
    :"userId" => String.t | nil,
    :"displayName" => String.t | nil,
    :"description" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.Account do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"avatar", :struct, PeerTube.Model.ActorImage, options)
  end
end

