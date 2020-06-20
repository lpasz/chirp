defmodule Chirp.Repo.Migrations.CreateUsername do
  use Ecto.Migration

  def change do
    create table(:username) do
      add :body, :string
      add :likes_count, :integer
      add :reposts_count, :integer

      timestamps()
    end

  end
end
