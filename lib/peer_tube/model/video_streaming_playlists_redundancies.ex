# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoStreamingPlaylistsRedundancies do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"baseUrl"
  ]

  @type t :: %__MODULE__{
    :"baseUrl" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoStreamingPlaylistsRedundancies do
  def decode(value, _options) do
    value
  end
end

