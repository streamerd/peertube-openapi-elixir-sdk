# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigFollowingsInstanceAutoFollowIndex do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"indexUrl"
  ]

  @type t :: %__MODULE__{
    :"indexUrl" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigFollowingsInstanceAutoFollowIndex do
  def decode(value, _options) do
    value
  end
end

