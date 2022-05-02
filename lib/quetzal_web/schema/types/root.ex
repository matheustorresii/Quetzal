defmodule QuetzalWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias QuetzalWeb.Resolvers.Character, as: CharacterResolver

  import_types QuetzalWeb.Schema.Types.Character

  object :root_query do
    field :get_character, type: :character do
      arg :id, non_null(:uuid4)
      resolve &CharacterResolver.get/2
    end
  end

  object :root_mutation do
    field :create_character, type: :character do
      arg :input, non_null(:create_character_input)
      resolve &CharacterResolver.create/2
    end
  end
end
