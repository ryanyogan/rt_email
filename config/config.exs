# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rt_email,
  ecto_repos: [RtEmail.Repo]

# Configures the endpoint
config :rt_email, RtEmailWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/Vzv4F3waBXGil3Rc4KJk11otjFQ6MPBwC6RKnnmKdpcjrrlVWrUhELr0sSM7GM9",
  render_errors: [view: RtEmailWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: RtEmail.PubSub,
  live_view: [signing_salt: "o0XMHh0h"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
