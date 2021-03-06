# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigCustomCache do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"previews",
    :"captions"
  ]

  @type t :: %__MODULE__{
    :"previews" => PeerTube.Model.ServerConfigCustomCachePreviews.t | nil,
    :"captions" => PeerTube.Model.ServerConfigCustomCachePreviews.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigCustomCache do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"previews", :struct, PeerTube.Model.ServerConfigCustomCachePreviews, options)
    |> deserialize(:"captions", :struct, PeerTube.Model.ServerConfigCustomCachePreviews, options)
  end
end

