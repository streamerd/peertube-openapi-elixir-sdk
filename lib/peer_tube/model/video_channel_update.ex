# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.VideoChannelUpdate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"displayName",
    :"description",
    :"support",
    :"bulkVideosSupportUpdate"
  ]

  @type t :: %__MODULE__{
    :"displayName" => String.t | nil,
    :"description" => String.t | nil,
    :"support" => String.t | nil,
    :"bulkVideosSupportUpdate" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.VideoChannelUpdate do
  def decode(value, _options) do
    value
  end
end

