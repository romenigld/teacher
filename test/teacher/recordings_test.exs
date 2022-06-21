defmodule Teacher.RecordingsTest do
  use Teacher.DataCase

  alias Teacher.Recordings

  describe "albums" do
    alias Teacher.Recordings.Album

    import Teacher.RecordingsFixtures

    @invalid_attrs %{artist: nil, summary: nil, title: nil, year: nil}

    test "list_albums/0 returns all albums" do
      album = album_fixture()
      assert Recordings.list_albums() == [album]
    end

    test "get_album!/1 returns the album with given id" do
      album = album_fixture()
      assert Recordings.get_album!(album.id) == album
    end

    test "create_album/1 with valid data creates a album" do
      valid_attrs = %{artist: "some artist", summary: "some summary", title: "some title", year: 42}

      assert {:ok, %Album{} = album} = Recordings.create_album(valid_attrs)
      assert album.artist == "some artist"
      assert album.summary == "some summary"
      assert album.title == "some title"
      assert album.year == 42
    end

    test "create_album/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recordings.create_album(@invalid_attrs)
    end

    test "update_album/2 with valid data updates the album" do
      album = album_fixture()
      update_attrs = %{artist: "some updated artist", summary: "some updated summary", title: "some updated title", year: 43}

      assert {:ok, %Album{} = album} = Recordings.update_album(album, update_attrs)
      assert album.artist == "some updated artist"
      assert album.summary == "some updated summary"
      assert album.title == "some updated title"
      assert album.year == 43
    end

    test "update_album/2 with invalid data returns error changeset" do
      album = album_fixture()
      assert {:error, %Ecto.Changeset{}} = Recordings.update_album(album, @invalid_attrs)
      assert album == Recordings.get_album!(album.id)
    end

    test "delete_album/1 deletes the album" do
      album = album_fixture()
      assert {:ok, %Album{}} = Recordings.delete_album(album)
      assert_raise Ecto.NoResultsError, fn -> Recordings.get_album!(album.id) end
    end

    test "change_album/1 returns a album changeset" do
      album = album_fixture()
      assert %Ecto.Changeset{} = Recordings.change_album(album)
    end
  end

  describe "genres" do
    alias Teacher.Recordings.Genre

    import Teacher.RecordingsFixtures

    @invalid_attrs %{name: nil}

    test "list_genres/0 returns all genres" do
      genre = genre_fixture()
      assert Recordings.list_genres() == [genre]
    end

    test "get_genre!/1 returns the genre with given id" do
      genre = genre_fixture()
      assert Recordings.get_genre!(genre.id) == genre
    end

    test "create_genre/1 with valid data creates a genre" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Genre{} = genre} = Recordings.create_genre(valid_attrs)
      assert genre.name == "some name"
    end

    test "create_genre/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recordings.create_genre(@invalid_attrs)
    end

    test "update_genre/2 with valid data updates the genre" do
      genre = genre_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Genre{} = genre} = Recordings.update_genre(genre, update_attrs)
      assert genre.name == "some updated name"
    end

    test "update_genre/2 with invalid data returns error changeset" do
      genre = genre_fixture()
      assert {:error, %Ecto.Changeset{}} = Recordings.update_genre(genre, @invalid_attrs)
      assert genre == Recordings.get_genre!(genre.id)
    end

    test "delete_genre/1 deletes the genre" do
      genre = genre_fixture()
      assert {:ok, %Genre{}} = Recordings.delete_genre(genre)
      assert_raise Ecto.NoResultsError, fn -> Recordings.get_genre!(genre.id) end
    end

    test "change_genre/1 returns a genre changeset" do
      genre = genre_fixture()
      assert %Ecto.Changeset{} = Recordings.change_genre(genre)
    end
  end
end
