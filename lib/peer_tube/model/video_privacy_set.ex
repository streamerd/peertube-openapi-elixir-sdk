# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoPrivacySet do
  @moduledoc """
  The video privacy (Public = `1`, Unlisted = `2`, Private = `3`, Internal = `4`)
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoPrivacySet do
  def decode(value, _options) do
    value
  end
end

