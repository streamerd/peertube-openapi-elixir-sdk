# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.Job do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"state",
    :"type",
    :"data",
    :"error",
    :"createdAt",
    :"finishedOn",
    :"processedOn"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"state" => String.t | nil,
    :"type" => String.t | nil,
    :"data" => %{optional(String.t) => map()} | nil,
    :"error" => %{optional(String.t) => map()} | nil,
    :"createdAt" => DateTime.t | nil,
    :"finishedOn" => DateTime.t | nil,
    :"processedOn" => DateTime.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.Job do
  def decode(value, _options) do
    value
  end
end

