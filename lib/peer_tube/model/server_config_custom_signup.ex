# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigCustomSignup do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"enabled",
    :"limit",
    :"requiresEmailVerification"
  ]

  @type t :: %__MODULE__{
    :"enabled" => boolean() | nil,
    :"limit" => integer() | nil,
    :"requiresEmailVerification" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigCustomSignup do
  def decode(value, _options) do
    value
  end
end

