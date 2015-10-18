defmodule TshirtStore.Product do
  use TshirtStore.Web, :model

  schema "products" do
    field :category_id, :integer
    field :sku, :string
    field :name, :string
    field :slug, :string
    field :description, :string
    field :image, :string
    field :price, :decimal
    field :status, :boolean, default: false

    timestamps
  end

  @required_fields ~w(category_id sku name slug description image price status)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
