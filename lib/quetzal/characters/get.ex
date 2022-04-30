defmodule Quetzal.Characters.Get do
  alias Ecto.UUID
  alias Quetzal.{Character, Repo}

  def call(id) do
    id
    |> UUID.cast()
    |> handle_response()
  end

  defp handle_response({:ok, uuid}) do
    case Repo.get(Character, uuid) do
      nil -> {:error, "User not found"}
      user -> {:ok, user}
    end
  end

  defp handle_response(:error) do
    {:error, "Invalid UUID"}
  end
end
