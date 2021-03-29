defmodule CrudRefeicoesWeb.MealController do
  use CrudRefeicoesWeb, :controller
  alias CrudRefeicoes.Meal

  def create(conn, params) do
    with {:ok, %Meal{} = meal} <- CrudRefeicoes.create_meal(params) do
      conn
      |> put_status(:created)
      |> render("create.json", meal: meal)
    end
  end

  def delete(conn, %{"id" => id}) do
    with {:ok, %Meal{}} <- CrudRefeicoes.delete_meal(id) do
      conn
      |> put_status(:no_content)
      |> text("")
    end
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %Meal{} = meal} <- CrudRefeicoes.get_meal_by_id(id) do
      conn
      |> put_status(:ok)
      |> render("meal.json", meal: meal)
    end
  end

  def update(conn, params) do
    with {:ok, %Meal{} = meal} <- CrudRefeicoes.update_meal(params) do
      conn
      |> put_status(:ok)
      |> render("meal.json", meal: meal)
    end
  end
end

# alias Rockelivery.User
# alias RockeliveryWeb.FallbackController

# action_fallback FallbackController

# def create(conn, params) do
#   with {:ok, %User{} = user} <- Rockelivery.create_user(params) do
#     conn
#     |> put_status(:created)
#     |> render("create.json", user: user)
#   end
# end

# def delete(conn, %{"id" => id}) do
#   with {:ok, %User{}} <- Rockelivery.delete_user(id) do
#     conn
#     |> put_status(:no_content)
#     |> text("")
#   end
# end

# def show(conn, %{"id" => id}) do
#   with {:ok, %User{} = user} <- Rockelivery.get_user_by_id(id) do
#     conn
#     |> put_status(:ok)
#     |> render("user.json", user: user)
#   end
# end

# def update(conn, params) do
#   with {:ok, %User{} = user} <- Rockelivery.update_user(params) do
#     conn
#     |> put_status(:ok)
#     |> render("user.json", user: user)
#   end
# end
