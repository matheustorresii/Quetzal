defmodule QuetzalWeb.Schema.Types.Character do
  use Absinthe.Schema.Notation

  import_types QuetzalWeb.Schema.Types.Custom.UUID4

  @desc "Logic character representation"
  object :character do
    field :id, non_null(:uuid4)
    field :name, non_null(:string)
    field :health, non_null(:integer)
    field :attack, non_null(:integer)
    field :extension, non_null(:integer)
    field :defense, non_null(:integer)
    field :speed, non_null(:integer)
    field :money, non_null(:integer)
  end

  input_object :create_character_input do
    field :name, non_null(:string), description: "Unique character name"
    field :health, non_null(:integer)
    field :attack, non_null(:integer)
    field :extension, non_null(:integer)
    field :defense, non_null(:integer)
    field :speed, non_null(:integer)
    field :money, non_null(:integer)
  end
end
