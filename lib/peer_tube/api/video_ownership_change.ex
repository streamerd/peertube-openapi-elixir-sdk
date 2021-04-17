# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Api.VideoOwnershipChange do
  @moduledoc """
  API calls for all endpoints tagged `VideoOwnershipChange`.
  """

  alias PeerTube.Connection
  import PeerTube.RequestBuilder


  @doc """
  Request ownership change

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - id (OneOfintegerUuid): The object id or uuid
  - username (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec videos_id_give_ownership_post(Tesla.Env.client, PeerTube.Model.OneOfintegerUuid.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def videos_id_give_ownership_post(connection, id, username, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/videos/#{id}/give-ownership")
    |> add_param(:form, :"username", username)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 400, false},
      { 404, false}
    ])
  end

  @doc """
  List video ownership changes

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec videos_ownership_get(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def videos_ownership_get(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/videos/ownership")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Accept ownership change request

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - id (OneOfintegerUuid): The object id or uuid
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec videos_ownership_id_accept_post(Tesla.Env.client, PeerTube.Model.OneOfintegerUuid.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def videos_ownership_id_accept_post(connection, id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/videos/ownership/#{id}/accept")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Refuse ownership change request

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - id (OneOfintegerUuid): The object id or uuid
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec videos_ownership_id_refuse_post(Tesla.Env.client, PeerTube.Model.OneOfintegerUuid.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def videos_ownership_id_refuse_post(connection, id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/videos/ownership/#{id}/refuse")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 403, false},
      { 404, false}
    ])
  end
end