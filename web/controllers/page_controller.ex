defmodule TshirtStore.PageController do
  use TshirtStore.Web, :controller

  # load app/models
  alias TshirtStore.Product

  def index(conn, _params) do
    products = Repo.all(Product)
    render(conn, "index.html", products: products)
  end
end
