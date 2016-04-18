defmodule Mamoblog.SessionController do
  use Mamoblog.Web, :controller
  alias Mamoblog.User
  import Comeonin.Bcrypt, only: [checkw: 2]

  plug :scrub_params, "user" when action in [:create]

  def new(conn, _params) do
    render conn, "new.html", changeset: User.changeset(%User{})
  end

  def create(conn, %{"user" => user_params}) do
      Repo.get_by(User, username: user_params["username"])
      |> sign_in(user_params["password"], conn)
  end
end
