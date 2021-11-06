defmodule EComElixirServerWeb.ProductView do
  use EComElixirServerWeb, :view
  alias EComElixirServerWeb.ProductView

  def render("index.json", %{products: products}) do
    %{data: render_many(products, ProductView, "product.json")}
  end

  def render("show.json", %{product: product}) do
    %{data: render_one(product, ProductView, "product.json")}
  end

  def render("product.json", %{product: product}) do
    %{
      id: product.id,
      _id: product._id,
      title: product.title,
      description: product.description,
      image: product.image,
      price: product.price,
      availableSizes: product.availableSizes
    }
  end
end
