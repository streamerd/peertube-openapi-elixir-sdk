# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.AddUserResponseUser do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"account"
  ]

  @type t :: %__MODULE__{
    :"id" => integer() | nil,
    :"account" => PeerTube.Model.AddUserResponseUserAccount.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.AddUserResponseUser do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"account", :struct, PeerTube.Model.AddUserResponseUserAccount, options)
  end
end

