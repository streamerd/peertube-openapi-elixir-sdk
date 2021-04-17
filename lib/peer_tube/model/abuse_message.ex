# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.AbuseMessage do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"message",
    :"byModerator",
    :"createdAt",
    :"account"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"message" => String.t | nil,
    :"byModerator" => boolean() | nil,
    :"createdAt" => DateTime.t | nil,
    :"account" => PeerTube.Model.AccountSummary.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.AbuseMessage do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"account", :struct, PeerTube.Model.AccountSummary, options)
  end
end
