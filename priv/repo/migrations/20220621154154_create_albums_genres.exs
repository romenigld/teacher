defmodule Teacher.Repo.Migrations.CreateAlbumsGenres do
  use Ecto.Migration

  def change do
    create table(:albums_genres, primary_key: false) do
      add :album_id, references(:albums, on_delete: :delete_all)
      add :genre_id, references(:genres, on_delete: :delete_all)
    end

    create unique_index(:albums_genres, [:album_id, :genre_id])
  end
end
