defmodule CrudRefeicoes.Meal.Create do
  alias CrudRefeicoes.Repo
  alias CrudRefeicoes.Meal
  alias Ecto.Changeset

  def call(params) do
    IO.inspect(params, label: "==============================================")
    params
    |> Meal.changeset()
    |> IO.inspect(label: "==============================================")
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
