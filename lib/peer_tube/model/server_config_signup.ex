# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigSignup do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"allowed",
    :"allowedForCurrentIP",
    :"requiresEmailVerification"
  ]

  @type t :: %__MODULE__{
    :"allowed" => boolean() | nil,
    :"allowedForCurrentIP" => boolean() | nil,
    :"requiresEmailVerification" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigSignup do
  def decode(value, _options) do
    value
  end
end

