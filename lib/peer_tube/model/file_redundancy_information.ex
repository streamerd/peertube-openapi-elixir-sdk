# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.FileRedundancyInformation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"fileUrl",
    :"strategy",
    :"size",
    :"createdAt",
    :"updatedAt",
    :"expiresOn"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"fileUrl" => String.t | nil,
    :"strategy" => String.t | nil,
    :"size" => integer() | nil,
    :"createdAt" => DateTime.t | nil,
    :"updatedAt" => DateTime.t | nil,
    :"expiresOn" => DateTime.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.FileRedundancyInformation do
  def decode(value, _options) do
    value
  end
end
