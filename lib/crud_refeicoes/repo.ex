defmodule CrudRefeicoes.Repo do
  use Ecto.Repo,
    otp_app: :crud_refeicoes,
    adapter: Ecto.Adapters.Postgres
end
