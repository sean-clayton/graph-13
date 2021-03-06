use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :graph_13, Graph13.Web.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :graph_13, Graph13.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "Postgres1234",
  database: "graph_13_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
