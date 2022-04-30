defmodule Quetzal.Character do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @fields [:name, :health, :attack, :extension, :defense, :speed, :money]

  schema "characters" do
    field :name, :string
    field :health, :integer
    field :attack, :integer
    field :extension, :integer
    field :defense, :integer
    field :speed, :integer
    field :money, :integer

    timestamps()
  end

  def changeset(params) do
    # %Quetzal.Character{}
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> unique_constraint([:name])
  end
end
