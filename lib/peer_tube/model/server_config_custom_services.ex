# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigCustomServices do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"twitter"
  ]

  @type t :: %__MODULE__{
    :"twitter" => PeerTube.Model.ServerConfigCustomServicesTwitter.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigCustomServices do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"twitter", :struct, PeerTube.Model.ServerConfigCustomServicesTwitter, options)
  end
end

