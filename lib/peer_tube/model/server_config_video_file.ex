# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigVideoFile do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"extensions"
  ]

  @type t :: %__MODULE__{
    :"extensions" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigVideoFile do
  def decode(value, _options) do
    value
  end
end

