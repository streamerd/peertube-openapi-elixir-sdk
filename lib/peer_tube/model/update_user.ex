# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.UpdateUser do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"email",
    :"emailVerified",
    :"videoQuota",
    :"videoQuotaDaily",
    :"pluginAuth",
    :"role",
    :"adminFlags"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"email" => String.t | nil,
    :"emailVerified" => boolean() | nil,
    :"videoQuota" => integer() | nil,
    :"videoQuotaDaily" => integer() | nil,
    :"pluginAuth" => String.t | nil,
    :"role" => PeerTube.Model.UserRole.t | nil,
    :"adminFlags" => PeerTube.Model.UserAdminFlags.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.UpdateUser do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"role", :struct, PeerTube.Model.UserRole, options)
    |> deserialize(:"adminFlags", :struct, PeerTube.Model.UserAdminFlags, options)
  end
end

