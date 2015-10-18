defmodule TshirtStore.ProductView do
  use TshirtStore.Web, :view

  def price(amount) do
    "$" <> to_string(amount)
  end

end
