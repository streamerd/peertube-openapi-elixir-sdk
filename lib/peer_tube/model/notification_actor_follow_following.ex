# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.NotificationActorFollowFollowing do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"type",
    :"name",
    :"displayName",
    :"host"
  ]

  @type t :: %__MODULE__{
    :"type" => String.t | nil,
    :"name" => String.t | nil,
    :"displayName" => String.t | nil,
    :"host" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.NotificationActorFollowFollowing do
  def decode(value, _options) do
    value
  end
end

