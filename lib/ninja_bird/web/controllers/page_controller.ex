defmodule NinjaBird.Web.PageController do
  use NinjaBird.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
