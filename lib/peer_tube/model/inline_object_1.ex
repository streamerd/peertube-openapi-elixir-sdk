# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.InlineObject1 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"uri"
  ]

  @type t :: %__MODULE__{
    :"uri" => String.t
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.InlineObject1 do
  def decode(value, _options) do
    value
  end
end

