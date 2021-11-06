defmodule EComElixirServer.MyProducts.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :_id, :string
    field :availableSizes, {:array, :string}
    field :description, :string
    field :image, :string
    field :price, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:_id, :title, :description, :image, :price, :availableSizes])
    |> validate_required([:_id, :title, :description, :image, :price, :availableSizes])
  end
end
