defmodule TeacherWeb.AlbumLive.Index do
  use TeacherWeb, :live_view
  alias Teacher.Recordings

  @impl true
  def handle_params(params, _url, socket) do
    albums =
      case params["genre"] do
        nil ->
          Recordings.list_albums()

        genre ->
          Recordings.albums_for_genre(genre)
      end

    {:noreply, assign(socket, :albums, albums)}
  end
end
