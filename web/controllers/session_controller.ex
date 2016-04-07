defmodule Mamoblog.SessionController do
  use Mamoblog.Web, :controller

  def new(conn, _pramas) do
    render conn, "new.html"
  end
end
