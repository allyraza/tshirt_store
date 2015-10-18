defmodule TshirtStore.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :slug, :string
      add :description, :text
      add :image, :string
      add :status, :boolean, default: false

      timestamps
    end

  end
end
