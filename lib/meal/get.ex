defmodule CrudRefeicoes.Meal.Get do
  alias CrudRefeicoes.{Meal, Repo}

  def by_id(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, "Meal not found"}
      meal -> {:ok, meal}
    end
  end
end
