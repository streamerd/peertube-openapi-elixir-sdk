# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.MrssGroupContent do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"url",
    :"fileSize",
    :"type",
    :"framerate",
    :"duration",
    :"height",
    :"lang"
  ]

  @type t :: %__MODULE__{
    :"url" => String.t | nil,
    :"fileSize" => integer() | nil,
    :"type" => String.t | nil,
    :"framerate" => integer() | nil,
    :"duration" => integer() | nil,
    :"height" => integer() | nil,
    :"lang" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.MrssGroupContent do
  def decode(value, _options) do
    value
  end
end

