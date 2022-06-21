defmodule TeacherWeb.GenreLive.FormComponent do
  use TeacherWeb, :live_component

  alias Teacher.Recordings

  @impl true
  def update(%{genre: genre} = assigns, socket) do
    changeset = Recordings.change_genre(genre)

    {:ok,
     socket
     |> assign(assigns)
     |> assign(:changeset, changeset)}
  end

  @impl true
  def handle_event("validate", %{"genre" => genre_params}, socket) do
    changeset =
      socket.assigns.genre
      |> Recordings.change_genre(genre_params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, :changeset, changeset)}
  end

  def handle_event("save", %{"genre" => genre_params}, socket) do
    save_genre(socket, socket.assigns.action, genre_params)
  end

  defp save_genre(socket, :edit, genre_params) do
    case Recordings.update_genre(socket.assigns.genre, genre_params) do
      {:ok, _genre} ->
        {:noreply,
         socket
         |> put_flash(:info, "Genre updated successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, :changeset, changeset)}
    end
  end

  defp save_genre(socket, :new, genre_params) do
    case Recordings.create_genre(genre_params) do
      {:ok, _genre} ->
        {:noreply,
         socket
         |> put_flash(:info, "Genre created successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end
end
