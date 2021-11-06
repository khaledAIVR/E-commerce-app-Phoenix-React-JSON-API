defmodule EComElixirServer.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :_id, :string
      add :email, :string
      add :name, :string
      add :address, :string
      add :total, :integer
      add :cartItems, {:array, :map}

      timestamps()
    end
  end
end
