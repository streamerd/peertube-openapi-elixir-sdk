# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Api.VideoCaptions do
  @moduledoc """
  API calls for all endpoints tagged `VideoCaptions`.
  """

  alias PeerTube.Connection
  import PeerTube.RequestBuilder


  @doc """
  Delete a video caption

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - id (OneOfintegerUuid): The object id or uuid
  - caption_language (String.t): The caption language
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec videos_id_captions_caption_language_delete(Tesla.Env.client, PeerTube.Model.OneOfintegerUuid.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def videos_id_captions_caption_language_delete(connection, id, caption_language, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/videos/#{id}/captions/#{caption_language}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 404, false}
    ])
  end

  @doc """
  Add or replace a video caption

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - id (OneOfintegerUuid): The object id or uuid
  - caption_language (String.t): The caption language
  - opts (KeywordList): [optional] Optional parameters
    - :captionfile (String.t): The file to upload.
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec videos_id_captions_caption_language_put(Tesla.Env.client, PeerTube.Model.OneOfintegerUuid.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def videos_id_captions_caption_language_put(connection, id, caption_language, opts \\ []) do
    optional_params = %{
      :"captionfile" => :form
    }
    %{}
    |> method(:put)
    |> url("/videos/#{id}/captions/#{caption_language}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 404, false}
    ])
  end

  @doc """
  List captions of a video

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - id (OneOfintegerUuid): The object id or uuid
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, PeerTube.Model.InlineResponse2003.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec videos_id_captions_get(Tesla.Env.client, PeerTube.Model.OneOfintegerUuid.t, keyword()) :: {:ok, PeerTube.Model.InlineResponse2003.t} | {:error, Tesla.Env.t}
  def videos_id_captions_get(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/videos/#{id}/captions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PeerTube.Model.InlineResponse2003{}}
    ])
  end
end
