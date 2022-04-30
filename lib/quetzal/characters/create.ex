defmodule Quetzal.Characters.Create do
  alias Quetzal.{Character, Repo}

  def call(params) do
    params
    |> Character.changeset()
    |> Repo.insert()
  end
end
