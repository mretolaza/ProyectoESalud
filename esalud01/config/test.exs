use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :esalud01, Esalud01.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :esalud01, Esalud01.Repo,
  adapter: Tds.Ecto,
  username: "db_user",
  password: "db_password",
  database: "esalud01_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
