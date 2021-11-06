defmodule EComElixirServer.Repo do
  use Ecto.Repo,
    otp_app: :e_com_elixir_server,
    adapter: Ecto.Adapters.Postgres
end
