# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.MrssPeerLink do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"href",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"href" => String.t | nil,
    :"type" => String.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.MrssPeerLink do
  def decode(value, _options) do
    value
  end
end
