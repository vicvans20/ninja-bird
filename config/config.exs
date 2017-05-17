# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ninja_bird,
  ecto_repos: [NinjaBird.Repo]

# Configures the endpoint
config :ninja_bird, NinjaBird.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rd4b2xshttTIKqvhPkGirsoz3CZudnc/8VFYYm/uBcH/OKK5pyeTRLI6UglQ8+qv",
  render_errors: [view: NinjaBird.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NinjaBird.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
