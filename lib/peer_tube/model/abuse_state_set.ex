# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.AbuseStateSet do
  @moduledoc """
  The abuse state (Pending = `1`, Rejected = `2`, Accepted = `3`)
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.AbuseStateSet do
  def decode(value, _options) do
    value
  end
end
