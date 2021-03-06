# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Api.Config do
  @moduledoc """
  API calls for all endpoints tagged `Config`.
  """

  alias PeerTube.Connection
  import PeerTube.RequestBuilder


  @doc """
  Get instance \"About\" information

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, PeerTube.Model.ServerConfigAbout.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec config_about_get(Tesla.Env.client, keyword()) :: {:ok, PeerTube.Model.ServerConfigAbout.t} | {:error, Tesla.Env.t}
  def config_about_get(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/config/about")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PeerTube.Model.ServerConfigAbout{}}
    ])
  end

  @doc """
  Delete instance runtime configuration

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec config_custom_delete(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def config_custom_delete(connection, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/config/custom")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end

  @doc """
  Get instance runtime configuration

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, PeerTube.Model.ServerConfigCustom.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec config_custom_get(Tesla.Env.client, keyword()) :: {:ok, PeerTube.Model.ServerConfigCustom.t} | {:error, Tesla.Env.t}
  def config_custom_get(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/config/custom")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PeerTube.Model.ServerConfigCustom{}}
    ])
  end

  @doc """
  Set instance runtime configuration

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec config_custom_put(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def config_custom_put(connection, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/config/custom")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 400, false}
    ])
  end

  @doc """
  Get instance public configuration

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, PeerTube.Model.ServerConfig.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec config_get(Tesla.Env.client, keyword()) :: {:ok, PeerTube.Model.ServerConfig.t} | {:error, Tesla.Env.t}
  def config_get(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/config")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PeerTube.Model.ServerConfig{}}
    ])
  end
end
