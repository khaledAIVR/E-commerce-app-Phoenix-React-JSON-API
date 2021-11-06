defmodule EComElixirServerWeb.ProductController do
  use EComElixirServerWeb, :controller

  alias EComElixirServer.MyProducts
  alias EComElixirServer.MyProducts.Product

  action_fallback EComElixirServerWeb.FallbackController

  def index(conn, _params) do
    products = MyProducts.list_products()
    render(conn, "index.json", products: products)
  end

  def create(conn, %{"product" => product_params}) do
    with {:ok, %Product{} = product} <- MyProducts.create_product(product_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.product_path(conn, :show, product))
      |> render("show.json", product: product)
    end
  end

  def show(conn, %{"id" => id}) do
    product = MyProducts.get_product!(id)
    render(conn, "show.json", product: product)
  end

  def update(conn, %{"id" => id, "product" => product_params}) do
    product = MyProducts.get_product!(id)

    with {:ok, %Product{} = product} <- MyProducts.update_product(product, product_params) do
      render(conn, "show.json", product: product)
    end
  end

  def delete(conn, %{"id" => id}) do
    product = MyProducts.get_product!(id)

    with {:ok, %Product{}} <- MyProducts.delete_product(product) do
      send_resp(conn, :no_content, "")
    end
  end
end
