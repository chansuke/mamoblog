defmodule Mamoblog.SessionController do
  use Mamoblog.Web, :controller
  alias Mamoblog.User
  import Comonin.Bcrypt, only: [checkw: 2]

  plug :scrub_params, "user" when action in [:create]

  def new(conn, _params) do
    render conn, "new.html", changeset: User.changeset(%User{})
  end
end
