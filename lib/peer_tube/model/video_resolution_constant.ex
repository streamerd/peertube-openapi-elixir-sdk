# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoResolutionConstant do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"label"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"label" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoResolutionConstant do
  def decode(value, _options) do
    value
  end
end

