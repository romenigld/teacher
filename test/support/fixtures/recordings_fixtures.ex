defmodule Teacher.RecordingsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Teacher.Recordings` context.
  """

  @doc """
  Generate a album.
  """
  def album_fixture(attrs \\ %{}) do
    {:ok, album} =
      attrs
      |> Enum.into(%{
        artist: "some artist",
        summary: "some summary",
        title: "some title",
        year: 42
      })
      |> Teacher.Recordings.create_album()

    album
  end

  @doc """
  Generate a genre.
  """
  def genre_fixture(attrs \\ %{}) do
    {:ok, genre} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Teacher.Recordings.create_genre()

    genre
  end
end
