defmodule Teacher.Recordings.Album do
  use Ecto.Schema
  import Ecto.Changeset

  schema "albums" do
    field :artist, :string
    field :summary, :string
    field :title, :string
    field :year, :integer

    many_to_many :genres, Teacher.Recordings.Genre, join_through: "albums_genres", on_replace: :delete

    timestamps()
  end

  @doc false
  def changeset(album, attrs) do
    album
    |> cast(attrs, [:artist, :summary, :title, :year])
    |> validate_required([:artist, :summary, :title, :year])
    |> Ecto.Changeset.put_assoc(:genres, get_genres(attrs["genres"]))
  end

  defp get_genres(genre_ids) do
    Teacher.Recordings.get_genres(genre_ids)
  end
end
