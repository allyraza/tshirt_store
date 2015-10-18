defmodule TshirtStore.CategoryTest do
  use TshirtStore.ModelCase

  alias TshirtStore.Category

  @valid_attrs %{description: "some content", image: "some content", name: "some content", slug: "some content", status: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Category.changeset(%Category{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Category.changeset(%Category{}, @invalid_attrs)
    refute changeset.valid?
  end
end
