defmodule EComElixirServerWeb.PageController do
  use EComElixirServerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
