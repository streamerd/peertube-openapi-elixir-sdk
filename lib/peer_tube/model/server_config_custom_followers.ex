# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigCustomFollowers do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"instance"
  ]

  @type t :: %__MODULE__{
    :"instance" => PeerTube.Model.ServerConfigCustomFollowersInstance.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigCustomFollowers do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"instance", :struct, PeerTube.Model.ServerConfigCustomFollowersInstance, options)
  end
end

