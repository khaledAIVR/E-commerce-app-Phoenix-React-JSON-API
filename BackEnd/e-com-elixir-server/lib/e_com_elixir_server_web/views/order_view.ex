defmodule EComElixirServerWeb.OrderView do
  use EComElixirServerWeb, :view
  alias EComElixirServerWeb.OrderView

  def render("index.json", %{orders: orders}) do
    %{data: render_many(orders, OrderView, "order.json")}
  end

  def render("show.json", %{order: order}) do
    %{data: render_one(order, OrderView, "order.json")}
  end

  def render("order.json", %{order: order}) do
    %{
      id: order.id,
      _id: order._id,
      email: order.email,
      name: order.name,
      address: order.address,
      total: order.total,
      cartItems: order.cartItems
    }
  end
end
