defmodule CrudRefeicoes.Meal.Create do
  alias CrudRefeicoes.Repo
  alias CrudRefeicoes.Meal
  alias Ecto.Changeset

  def call(params) do
    params
    |> Meal.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:error, %Changeset{} = errors}) do
    Changeset.traverse_errors(errors, fn {msg, opts} ->
      Enum.reduce(opts, msg, fn {key, value}, acc ->
        String.replace(acc, "%{#{key}}", to_string(value))
      end)
    end)
  end

  defp handle_insert({:ok, %Meal{}} = result), do: result
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
