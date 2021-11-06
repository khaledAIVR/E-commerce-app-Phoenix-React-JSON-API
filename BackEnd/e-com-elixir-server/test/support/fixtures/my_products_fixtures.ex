defmodule EComElixirServer.MyProductsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `EComElixirServer.MyProducts` context.
  """

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        _id: "some _id",
        availableSizes: [],
        description: "some description",
        image: "some image",
        price: 42,
        title: "some title"
      })
      |> EComElixirServer.MyProducts.create_product()

    product
  end
end
