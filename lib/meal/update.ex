defmodule CrudRefeicoes.Meal.Update do
  alias CrudRefeicoes.{Meal, Repo}

  def call(%{"id" => id} = params) do
    case Repo.get(Meal, id) do
      nil -> {:error, "Meal not found"}
      meal -> do_update(meal, params)
    end
  end

  def do_update(meal, params) do
    meal
    |> Meal.changeset(params)
    |> Repo.update()
  end
end
