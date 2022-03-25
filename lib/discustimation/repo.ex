defmodule Discustimation.Repo do
  use Ecto.Repo,
    otp_app: :discustimation,
    adapter: Ecto.Adapters.Postgres
end
