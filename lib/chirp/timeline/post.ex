defmodule Chirp.Timeline.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "username" do
    field :body, :string
    field :likes_count, :integer
    field :reposts_count, :integer

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body, :likes_count, :reposts_count])
    |> validate_required([:body, :likes_count, :reposts_count])
  end
end
