# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoBlacklist do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"videoId",
    :"createdAt",
    :"updatedAt",
    :"name",
    :"uuid",
    :"description",
    :"duration",
    :"views",
    :"likes",
    :"dislikes",
    :"nsfw"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"videoId" => integer() | nil,
    :"createdAt" => DateTime.t | nil,
    :"updatedAt" => DateTime.t | nil,
    :"name" => String.t | nil,
    :"uuid" => String.t | nil,
    :"description" => String.t | nil,
    :"duration" => integer() | nil,
    :"views" => integer() | nil,
    :"likes" => integer() | nil,
    :"dislikes" => integer() | nil,
    :"nsfw" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoBlacklist do
  def decode(value, _options) do
    value
  end
end

