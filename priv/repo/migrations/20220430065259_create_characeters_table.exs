defmodule Quetzal.Repo.Migrations.CreateCharacetersTable do
  use Ecto.Migration

  def change do
    create table(:characters) do
      add :name, :string
      add :health, :integer
      add :attack, :integer
      add :extension, :integer
      add :defense, :integer
      add :speed, :integer
      add :money, :integer

      timestamps()
    end

    create unique_index(:characters, [:name])
  end
end
