# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigCustomAdmin do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"email"
  ]

  @type t :: %__MODULE__{
    :"email" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigCustomAdmin do
  def decode(value, _options) do
    value
  end
end

