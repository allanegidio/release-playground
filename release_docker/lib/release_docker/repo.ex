defmodule ReleaseDocker.Repo do
  use Ecto.Repo,
    otp_app: :release_docker,
    adapter: Ecto.Adapters.Postgres
end
