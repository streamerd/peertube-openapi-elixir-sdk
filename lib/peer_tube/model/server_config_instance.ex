# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigInstance do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"shortDescription",
    :"defaultClientRoute",
    :"isNSFW",
    :"defaultNSFWPolicy",
    :"customizations"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t | nil,
    :"shortDescription" => String.t | nil,
    :"defaultClientRoute" => String.t | nil,
    :"isNSFW" => boolean() | nil,
    :"defaultNSFWPolicy" => String.t | nil,
    :"customizations" => PeerTube.Model.ServerConfigInstanceCustomizations.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigInstance do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"customizations", :struct, PeerTube.Model.ServerConfigInstanceCustomizations, options)
  end
end
