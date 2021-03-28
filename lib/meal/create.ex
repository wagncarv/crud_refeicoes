defmodule CrudRefeicoes.Meal.Create do
  alias CrudRefeicoes.Repo
  alias CrudRefeicoes.Meal

  def call(params) do
    params
    |> Meal.changeset()
    |> Repo.insert()
  end
end

# defmodule Rockelivery.Users.Create do
#   alias Rockelivery.{Error, User, Repo}

#   def call(params) do
#     params
#     |> User.changeset()
#     |> Repo.insert()
#     |> handle_insert()
#   end

#   defp handle_insert({:ok, %User{}} = result), do: result

#   defp handle_insert({:error, result}) do
#     {:error, Error.build(:bad_request, result)}
#   end
# end
