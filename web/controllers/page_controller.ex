defmodule Mamoblog.PageController do
  use Mamoblog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
