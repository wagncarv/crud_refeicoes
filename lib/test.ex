defmodule Test do
  alias CrudRefeicoes.Meal.Create

  def test do
    params = %{descricao: "Carne", data: DateTime.utc_now(), calorias: 100}

    Create.call(params)
  end
end
