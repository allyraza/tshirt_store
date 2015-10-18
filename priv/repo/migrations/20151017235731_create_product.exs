defmodule TshirtStore.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :category_id, :integer
      add :sku, :string
      add :name, :string
      add :slug, :string
      add :description, :text
      add :image, :string
      add :price, :decimal
      add :status, :boolean, default: false

      timestamps
    end

  end
end
