defmodule TeacherWeb.GenreLive.Index do
  use TeacherWeb, :live_view

  alias Teacher.Recordings
  alias Teacher.Recordings.Genre

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :genres, list_genres())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Genre")
    |> assign(:genre, Recordings.get_genre!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Genre")
    |> assign(:genre, %Genre{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Genres")
    |> assign(:genre, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    genre = Recordings.get_genre!(id)
    {:ok, _} = Recordings.delete_genre(genre)

    {:noreply, assign(socket, :genres, list_genres())}
  end

  defp list_genres do
    Recordings.list_genres()
  end
end
