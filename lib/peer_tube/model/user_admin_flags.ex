# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.UserAdminFlags do
  @moduledoc """
  Admin flags for the user (None = `0`, Bypass video blacklist = `1`)
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.UserAdminFlags do
  def decode(value, _options) do
    value
  end
end
