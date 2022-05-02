defmodule QuetzalWeb.Resolvers.Character do
  def get(%{id: id}, _context), do: Quetzal.Characters.Get.call(id)
  def create(%{input: params}, _context), do: Quetzal.Characters.Create.call(params)
end
