defmodule TshirtStore.PageController do
  use TshirtStore.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
