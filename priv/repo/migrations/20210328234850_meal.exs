defmodule CrudRefeicoes.Repo.Migrations.Meal do
  use Ecto.Migration

  def change do
    create table(:meal) do
      add :descricao, :string
      add :calorias, :integer
      add :data, :utc_datetime

      timestamps()
    end
  end
end
