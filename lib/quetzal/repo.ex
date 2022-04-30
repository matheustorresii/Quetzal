defmodule Quetzal.Repo do
  use Ecto.Repo,
    otp_app: :quetzal,
    adapter: Ecto.Adapters.Postgres
end
