defmodule TshirtStore.ProductTest do
  use TshirtStore.ModelCase

  alias TshirtStore.Product

  @valid_attrs %{category_id: 42, description: "some content", image: "some content", name: "some content", price: "120.5", sku: "some content", slug: "some content", status: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Product.changeset(%Product{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Product.changeset(%Product{}, @invalid_attrs)
    refute changeset.valid?
  end
end
