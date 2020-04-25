defmodule RtEmail.Repo do
  use Ecto.Repo,
    otp_app: :rt_email,
    adapter: Ecto.Adapters.Postgres
end
