# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigCustom do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"instance",
    :"theme",
    :"services",
    :"cache",
    :"signup",
    :"admin",
    :"contactForm",
    :"user",
    :"transcoding",
    :"import",
    :"autoBlacklist",
    :"followers"
  ]

  @type t :: %__MODULE__{
    :"instance" => PeerTube.Model.ServerConfigCustomInstance.t | nil,
    :"theme" => PeerTube.Model.ServerConfigCustomTheme.t | nil,
    :"services" => PeerTube.Model.ServerConfigCustomServices.t | nil,
    :"cache" => PeerTube.Model.ServerConfigCustomCache.t | nil,
    :"signup" => PeerTube.Model.ServerConfigCustomSignup.t | nil,
    :"admin" => PeerTube.Model.ServerConfigCustomAdmin.t | nil,
    :"contactForm" => PeerTube.Model.ServerConfigEmail.t | nil,
    :"user" => PeerTube.Model.ServerConfigUser.t | nil,
    :"transcoding" => PeerTube.Model.ServerConfigCustomTranscoding.t | nil,
    :"import" => PeerTube.Model.ServerConfigImport.t | nil,
    :"autoBlacklist" => PeerTube.Model.ServerConfigAutoBlacklist.t | nil,
    :"followers" => PeerTube.Model.ServerConfigCustomFollowers.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigCustom do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"instance", :struct, PeerTube.Model.ServerConfigCustomInstance, options)
    |> deserialize(:"theme", :struct, PeerTube.Model.ServerConfigCustomTheme, options)
    |> deserialize(:"services", :struct, PeerTube.Model.ServerConfigCustomServices, options)
    |> deserialize(:"cache", :struct, PeerTube.Model.ServerConfigCustomCache, options)
    |> deserialize(:"signup", :struct, PeerTube.Model.ServerConfigCustomSignup, options)
    |> deserialize(:"admin", :struct, PeerTube.Model.ServerConfigCustomAdmin, options)
    |> deserialize(:"contactForm", :struct, PeerTube.Model.ServerConfigEmail, options)
    |> deserialize(:"user", :struct, PeerTube.Model.ServerConfigUser, options)
    |> deserialize(:"transcoding", :struct, PeerTube.Model.ServerConfigCustomTranscoding, options)
    |> deserialize(:"import", :struct, PeerTube.Model.ServerConfigImport, options)
    |> deserialize(:"autoBlacklist", :struct, PeerTube.Model.ServerConfigAutoBlacklist, options)
    |> deserialize(:"followers", :struct, PeerTube.Model.ServerConfigCustomFollowers, options)
  end
end

