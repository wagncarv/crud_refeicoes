# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :crud_refeicoes,
  ecto_repos: [CrudRefeicoes.Repo]

config :crud_refeicoes, CrudRefeicoes.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :crud_refeicoes, CrudRefeicoesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PGSx+D1sCh1u79qJd1Jx226hGa6Y8/J9LZJ8oynzsbUZRzc3zeW+hzNL41/sROMg",
  render_errors: [view: CrudRefeicoesWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: CrudRefeicoes.PubSub,
  live_view: [signing_salt: "5A9V3HAD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
