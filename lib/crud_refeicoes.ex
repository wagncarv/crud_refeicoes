defmodule CrudRefeicoes do
  alias CrudRefeicoes.Meal.Create, as: MealCreate
  alias CrudRefeicoes.Meal.Delete, as: MealDelete
  alias CrudRefeicoes.Meal.Update, as: MealUpdate
  alias CrudRefeicoes.Meal.Get, as: MealGet

  defdelegate create_meal(params), to: MealCreate, as: :call
  defdelegate delete_meal(params), to: MealDelete, as: :call
  defdelegate update_meal(params), to: MealUpdate, as: :call
  defdelegate get_meal_by_id(id), to: MealGet, as: :by_id
end
