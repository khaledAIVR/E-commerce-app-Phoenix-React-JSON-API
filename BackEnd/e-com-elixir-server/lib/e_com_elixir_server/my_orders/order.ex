defmodule EComElixirServer.MyOrders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  schema "orders" do
    field :_id, :string
    field :address, :string
    field :cartItems, {:array, :map}
    field :email, :string
    field :name, :string
    field :total, :integer

    timestamps()
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:_id, :email, :name, :address, :total, :cartItems])
    |> validate_required([:_id, :email, :name, :address, :total, :cartItems])
  end
end
