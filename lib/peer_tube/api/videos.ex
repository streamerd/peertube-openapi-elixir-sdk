# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule PeerTube.Api.Videos do
  @moduledoc """
  API calls for all endpoints tagged `Videos`.
  """

  alias PeerTube.Connection
  import PeerTube.RequestBuilder


  @doc """
  List videos of subscriptions of my user

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :category_one_of (OneOfintegerarray): category id of the video (see [/videos/categories](#tag/Video/paths/~1videos~1categories/get))
    - :tags_one_of (OneOfstringarray): tag(s) of the video
    - :tags_all_of (OneOfstringarray): tag(s) of the video, where all should be present in the video
    - :licence_one_of (OneOfintegerarray): licence id of the video (see [/videos/licences](#tag/Video/paths/~1videos~1licences/get))
    - :language_one_of (OneOfstringarray): language id of the video (see [/videos/languages](#tag/Video/paths/~1videos~1languages/get)). Use `_unknown` to filter on videos that don't have a video language
    - :nsfw (String.t): whether to include nsfw videos, if any
    - :filter (String.t): Special filters which might require special rights:  * `local` - only videos local to the instance  * `all-local` - only videos local to the instance, but showing private and unlisted videos (requires Admin privileges)  * `all` - all videos, showing private and unlisted videos (requires Admin privileges) 
    - :skip_count (String.t): if you don't need the `total` in the response
    - :start (integer()): Offset used to paginate results
    - :count (integer()): Number of items to return
    - :sort (String.t): Sort videos by criteria
  ## Returns

  {:ok, PeerTube.Model.VideoListResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec users_me_subscriptions_videos_get(Tesla.Env.client, keyword()) :: {:ok, PeerTube.Model.VideoListResponse.t} | {:error, Tesla.Env.t}
  def users_me_subscriptions_videos_get(connection, opts \\ []) do
    optional_params = %{
      :"categoryOneOf" => :query,
      :"tagsOneOf" => :query,
      :"tagsAllOf" => :query,
      :"licenceOneOf" => :query,
      :"languageOneOf" => :query,
      :"nsfw" => :query,
      :"filter" => :query,
      :"skipCount" => :query,
      :"start" => :query,
      :"count" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/users/me/subscriptions/videos")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PeerTube.Model.VideoListResponse{}}
    ])
  end

  @doc """
  Get videos of my user

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :start (integer()): Offset used to paginate results
    - :count (integer()): Number of items to return
    - :sort (String.t): Sort column
  ## Returns

  {:ok, PeerTube.Model.VideoListResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec users_me_videos_get(Tesla.Env.client, keyword()) :: {:ok, PeerTube.Model.VideoListResponse.t} | {:error, Tesla.Env.t}
  def users_me_videos_get(connection, opts \\ []) do
    optional_params = %{
      :"start" => :query,
      :"count" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/users/me/videos")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PeerTube.Model.VideoListResponse{}}
    ])
  end

  @doc """
  Get video imports of my user

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :start (integer()): Offset used to paginate results
    - :count (integer()): Number of items to return
    - :sort (String.t): Sort column
  ## Returns

  {:ok, PeerTube.Model.VideoImport.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec users_me_videos_imports_get(Tesla.Env.client, keyword()) :: {:ok, PeerTube.Model.VideoImport.t} | {:error, Tesla.Env.t}
  def users_me_videos_imports_get(connection, opts \\ []) do
    optional_params = %{
      :"start" => :query,
      :"count" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/users/me/videos/imports")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PeerTube.Model.VideoImport{}}
    ])
  end

  @doc """
  List videos of a playlist

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - id (OneOfintegerUuid): The object id or uuid
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, PeerTube.Model.VideoListResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec video_playlists_id_videos_get(Tesla.Env.client, PeerTube.Model.OneOfintegerUuid.t, keyword()) :: {:ok, PeerTube.Model.VideoListResponse.t} | {:error, Tesla.Env.t}
  def video_playlists_id_videos_get(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/video-playlists/#{id}/videos")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PeerTube.Model.VideoListResponse{}}
    ])
  end

  @doc """
  Add a video in a playlist

  ## Parameters

  - connection (PeerTube.Connection): Connection to server
  - id (OneOfintegerUuid): The object id or uuid
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject19): 
  ## Returns

  {:ok, PeerTube.Model.InlineResponse2008.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec video_playlists_id_videos_post(Tesla.Env.client, PeerTube.Model.OneOfintegerUuid.t, keyword()) :: {:ok, PeerTube.Model.InlineResponse2008.t} | {:error, Tesla.Env.t}
  def video_playlists_id_videos_post(connection, id, opts \\ []) do
    optional_params = %{
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/video-playlists/#{id}/videos")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %PeerTube.Model.InlineResponse2008{}}
    ])
  end
end