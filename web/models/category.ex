defmodule TshirtStore.Category do
  use TshirtStore.Web, :model

  schema "categories" do
    field :name, :string
    field :slug, :string
    field :description, :string
    field :image, :string
    field :status, :boolean, default: false
    has_many :products, TshirtStore.Product
    timestamps
  end

  @required_fields ~w(name slug)
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
