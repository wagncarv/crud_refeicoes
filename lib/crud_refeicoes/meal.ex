defmodule CrudRefeicoes.Meal do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @required_params [:descricao, :calorias]

  @derive {Jason.Encoder, only: [:id, :descricao, :data, :calorias]}

  schema "meal" do
    field :descricao, :string
    field :data, :utc_datetime
    field :calorias, :integer

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:descricao, min: 4)
    |> validate_number(:calorias, greater_than_or_equal_to: 1)
    |> insert_date_time()
  end

  defp insert_date_time(%Changeset{valid?: true, changes: %{} = changes} = changeset) do
    data = Map.merge(changes, %{data: DateTime.truncate(DateTime.utc_now(), :second)})
    change(changeset, data)
  end

  defp insert_date_time(changeset), do: changeset
end
