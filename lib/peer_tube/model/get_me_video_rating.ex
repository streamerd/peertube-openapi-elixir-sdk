# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.GetMeVideoRating do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"rating"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"rating" => float()
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.GetMeVideoRating do
  def decode(value, _options) do
    value
  end
end
