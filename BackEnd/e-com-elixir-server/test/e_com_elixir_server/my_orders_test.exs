defmodule EComElixirServer.MyOrdersTest do
  use EComElixirServer.DataCase

  alias EComElixirServer.MyOrders

  describe "orders" do
    alias EComElixirServer.MyOrders.Order

    import EComElixirServer.MyOrdersFixtures

    @invalid_attrs %{_id: nil, address: nil, cartItems: nil, email: nil, name: nil, total: nil}

    test "list_orders/0 returns all orders" do
      order = order_fixture()
      assert MyOrders.list_orders() == [order]
    end

    test "get_order!/1 returns the order with given id" do
      order = order_fixture()
      assert MyOrders.get_order!(order.id) == order
    end

    test "create_order/1 with valid data creates a order" do
      valid_attrs = %{_id: "some _id", address: "some address", cartItems: [], email: "some email", name: "some name", total: 42}

      assert {:ok, %Order{} = order} = MyOrders.create_order(valid_attrs)
      assert order._id == "some _id"
      assert order.address == "some address"
      assert order.cartItems == []
      assert order.email == "some email"
      assert order.name == "some name"
      assert order.total == 42
    end

    test "create_order/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = MyOrders.create_order(@invalid_attrs)
    end

    test "update_order/2 with valid data updates the order" do
      order = order_fixture()
      update_attrs = %{_id: "some updated _id", address: "some updated address", cartItems: [], email: "some updated email", name: "some updated name", total: 43}

      assert {:ok, %Order{} = order} = MyOrders.update_order(order, update_attrs)
      assert order._id == "some updated _id"
      assert order.address == "some updated address"
      assert order.cartItems == []
      assert order.email == "some updated email"
      assert order.name == "some updated name"
      assert order.total == 43
    end

    test "update_order/2 with invalid data returns error changeset" do
      order = order_fixture()
      assert {:error, %Ecto.Changeset{}} = MyOrders.update_order(order, @invalid_attrs)
      assert order == MyOrders.get_order!(order.id)
    end

    test "delete_order/1 deletes the order" do
      order = order_fixture()
      assert {:ok, %Order{}} = MyOrders.delete_order(order)
      assert_raise Ecto.NoResultsError, fn -> MyOrders.get_order!(order.id) end
    end

    test "change_order/1 returns a order changeset" do
      order = order_fixture()
      assert %Ecto.Changeset{} = MyOrders.change_order(order)
    end
  end
end
