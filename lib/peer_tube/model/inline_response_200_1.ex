# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.InlineResponse2001 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"avatar"
  ]

  @type t :: %__MODULE__{
    :"avatar" => PeerTube.Model.ActorImage.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.InlineResponse2001 do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"avatar", :struct, PeerTube.Model.ActorImage, options)
  end
end
