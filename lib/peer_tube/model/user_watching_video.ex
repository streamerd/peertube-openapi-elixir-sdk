# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.UserWatchingVideo do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"currentTime"
  ]

  @type t :: %__MODULE__{
    :"currentTime" => integer() | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.UserWatchingVideo do
  def decode(value, _options) do
    value
  end
end

