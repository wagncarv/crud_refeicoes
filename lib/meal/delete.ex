defmodule CrudRefeicoes.Meal.Delete do
  alias CrudRefeicoes.{Meal, Repo}

  def call(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, "Meal not found"}
      meal -> Repo.delete(meal)
    end
  end
end
