defmodule EComElixirServer.MyOrdersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `EComElixirServer.MyOrders` context.
  """

  @doc """
  Generate a order.
  """
  def order_fixture(attrs \\ %{}) do
    {:ok, order} =
      attrs
      |> Enum.into(%{
        _id: "some _id",
        address: "some address",
        cartItems: [],
        email: "some email",
        name: "some name",
        total: 42
      })
      |> EComElixirServer.MyOrders.create_order()

    order
  end
end
