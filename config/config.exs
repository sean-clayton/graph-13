# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graph_13,
  ecto_repos: [Graph13.Repo]

# Configures the endpoint
config :graph_13, Graph13.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6VlQW2fN/ZekBGpMF8Mr+XYKwuHHWeXPnOV9EKefHnRZGV2tc05M+WTvL5Ynez7Q",
  render_errors: [view: Graph13.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: Graph13.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
