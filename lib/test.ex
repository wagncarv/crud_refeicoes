defmodule Test do
  # alias CrudRefeicoes.Meal.Create
  alias CrudRefeicoes.{Meal, Repo}
  alias CrudRefeicoes.Meal.{Get, Delete, Create, Update}

  def test do
    # params = %{descricao: "abcde", data: DateTime.utc_now(), calorias: 100}

    # Create.call(params)

    # ========================================
    # Repo.all(Meal)
    # "7733301a-6690-4613-a972-757a08b9ee79"

    # ===================================
    # Get.by_id("7733301a-6690-4613-a972-757a08b9ee79")
    # Delete.call("7733301a-6690-4613-a972-757a08b9ee79")
    # ================================================
    #    %{"id" => "3fa66ac1-aef6-4769-8a22-3cf49936b3b7", "descricao" => "abacaxi", "data" => DateTime.utc_now()}
    # |> Update.call()

    # DateTime.utc_now()
    date = DateTime.utc_now()
    DateTime.truncate(date, :millisecond)

  end
end
