defmodule EComElixirServer.MyProductsTest do
  use EComElixirServer.DataCase

  alias EComElixirServer.MyProducts

  describe "products" do
    alias EComElixirServer.MyProducts.Product

    import EComElixirServer.MyProductsFixtures

    @invalid_attrs %{_id: nil, availableSizes: nil, description: nil, image: nil, price: nil, title: nil}

    test "list_products/0 returns all products" do
      product = product_fixture()
      assert MyProducts.list_products() == [product]
    end

    test "get_product!/1 returns the product with given id" do
      product = product_fixture()
      assert MyProducts.get_product!(product.id) == product
    end

    test "create_product/1 with valid data creates a product" do
      valid_attrs = %{_id: "some _id", availableSizes: [], description: "some description", image: "some image", price: 42, title: "some title"}

      assert {:ok, %Product{} = product} = MyProducts.create_product(valid_attrs)
      assert product._id == "some _id"
      assert product.availableSizes == []
      assert product.description == "some description"
      assert product.image == "some image"
      assert product.price == 42
      assert product.title == "some title"
    end

    test "create_product/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = MyProducts.create_product(@invalid_attrs)
    end

    test "update_product/2 with valid data updates the product" do
      product = product_fixture()
      update_attrs = %{_id: "some updated _id", availableSizes: [], description: "some updated description", image: "some updated image", price: 43, title: "some updated title"}

      assert {:ok, %Product{} = product} = MyProducts.update_product(product, update_attrs)
      assert product._id == "some updated _id"
      assert product.availableSizes == []
      assert product.description == "some updated description"
      assert product.image == "some updated image"
      assert product.price == 43
      assert product.title == "some updated title"
    end

    test "update_product/2 with invalid data returns error changeset" do
      product = product_fixture()
      assert {:error, %Ecto.Changeset{}} = MyProducts.update_product(product, @invalid_attrs)
      assert product == MyProducts.get_product!(product.id)
    end

    test "delete_product/1 deletes the product" do
      product = product_fixture()
      assert {:ok, %Product{}} = MyProducts.delete_product(product)
      assert_raise Ecto.NoResultsError, fn -> MyProducts.get_product!(product.id) end
    end

    test "change_product/1 returns a product changeset" do
      product = product_fixture()
      assert %Ecto.Changeset{} = MyProducts.change_product(product)
    end
  end
end
