defmodule EComElixirServer.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :_id, :string
      add :title, :string
      add :description, :string
      add :image, :string
      add :price, :integer
      add :availableSizes, {:array, :string}

      timestamps()
    end
  end
end
