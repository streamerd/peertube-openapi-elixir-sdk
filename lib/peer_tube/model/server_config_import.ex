# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Model.ServerConfigImport do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"videos"
  ]

  @type t :: %__MODULE__{
    :"videos" => PeerTube.Model.ServerConfigImportVideos.t | nil
  }
end

defimpl Poison.Decoder, for: PeerTube.Model.ServerConfigImport do
  import PeerTube.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"videos", :struct, PeerTube.Model.ServerConfigImportVideos, options)
  end
end

