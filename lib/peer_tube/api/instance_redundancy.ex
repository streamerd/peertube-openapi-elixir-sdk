# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Api.InstanceRedundancy do
  @moduledoc """
  API calls for all endpoints tagged `InstanceRedundancy`.
  """

  alias PeerTube.Connection
  import PeerTube.RequestBuilder


  @doc """
  Update a server redundancy policy

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - host (String.t): server domain to mirror
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject26): 
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec redundancy_host_put(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def redundancy_host_put(connection, host, opts \\ []) do
    optional_params = %{
      :body => :body
    }
    %{}
    |> method(:put)
    |> url("/redundancy/#{host}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 404, false}
    ])
  end
end
