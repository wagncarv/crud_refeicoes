defmodule CrudRefeicoes.MealView do
  use CrudRefeicoesWeb, :view
  alias CrudRefeicoes.Meal

  def render("create.json", %{meal: %Meal{} = meal}) do
    %{
      message: "Meal created",
      meal: meal
    }
  end
end

# defmodule RockeliveryWeb.UsersView do
#   use RockeliveryWeb, :view
#   alias Rockelivery.User

#   def render("create.json", %{user: %User{} = user}) do
#     %{
#       message: "User created",
#       user: user
#     }
#   end

#   def render("user.json", %{user: %User{} = user}), do: %{user: user}
# end
