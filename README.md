# PeerTube

# Introduction  The PeerTube API is built on HTTP(S) and is RESTful. You can use your favorite HTTP/REST library for your programming language to use PeerTube. The spec API is fully compatible with [openapi-generator](https://github.com/OpenAPITools/openapi-generator/wiki/API-client-generator-HOWTO) which generates a client SDK in the language of your choice - we generate some client SDKs automatically:  - [Python](https://framagit.org/framasoft/peertube/clients/python) - [Go](https://framagit.org/framasoft/peertube/clients/go) - [Kotlin](https://framagit.org/framasoft/peertube/clients/kotlin)  See the [Quick Start guide](https://docs.joinpeertube.org/api-rest-getting-started) so you can play with the PeerTube API.  # Authentication  When you sign up for an account, you are given the possibility to generate sessions, and authenticate using this session token. One session token can currently be used at a time.  ## Roles  Accounts are given permissions based on their role. There are three roles on PeerTube: Administrator, Moderator, and User. See the [roles guide](https://docs.joinpeertube.org/admin-managing-users?id&#x3D;roles) for a detail of their permissions.  # Errors  The API uses standard HTTP status codes to indicate the success or failure of the API call. The body of the response will be JSON in the following format.  &#x60;&#x60;&#x60; {   \&quot;code\&quot;: \&quot;unauthorized_request\&quot;, // example inner error code   \&quot;error\&quot;: \&quot;Token is invalid.\&quot; // example exposed error message } &#x60;&#x60;&#x60; 

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `peer_tube` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:peer_tube, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/peer_tube](https://hexdocs.pm/peer_tube).
