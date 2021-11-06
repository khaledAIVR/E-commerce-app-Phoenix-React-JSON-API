# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EComElixirServer.Repo.insert!(%EComElixirServer.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias EComElixirServer.Repo
alias EComElixirServer.MyProducts.Product
alias EComElixirServer.MyOrders.Order

# Repo.insert!(%Product{
#   _id: "dress1",
#   image: "/images/dress1.jpg",
#   title: "Midi sundress with shirring detail",
#   description: "This is for all the latest trends",
#   availableSizes: ["X", "L", "XL", "XXL"],
#   price: 29
# })

# Repo.insert!(%Product{
#   _id: "dress2",
#   image: "/images/dress2.jpg",
#   title: "Midi sundress with ruched front",
#   description: "This is for all the latest trends.",
#   availableSizes: ["X", "M", "L"],
#   price: 18
# })

# Repo.insert!(%Product{
#   _id: "dress3",
#   image: "/images/dress3.jpg",
#   title: "Midi dress in pink ditsy floral",
#   description: "This is for all the latest trends.",
#   availableSizes: ["X", "M", "L"],
#   price: 14
# })

# Repo.insert!(%Product{
#   _id: "dress4",
#   image: "/images/dress4.jpg",
#   title: "cami maxi dress in polka dot",
#   description: "This is for all the latest trends.",
#   availableSizes: ["XL"],
#   price: 25
# })

# Repo.insert!(%Product{
#   _id: "dress5",
#   image: "/images/dress5.jpg",
#   title: "Frill mini dress in yellow polka dot",
#   description: "This is for all the latest trends.",
#   availableSizes: ["X", "L", "XL"],
#   price: 10
# })

# Repo.insert!(%Product{
#   _id: "dress6",
#   image: "/images/dress6.jpg",
#   title: "Midi tea dress in blue and red spot",
#   description: "This is for all the latest trends.",
#   availableSizes: ["XL", "XXL"],
#   price: 49
# })

Repo.insert!(%Order{
  _id: "7zmNFigpw",
  name: "MOHAMMAD KHALED FARES",
  email: "mohammad.khaled.moslemany@gmail.com",
  address: "Salaman El Farsey St, Al Obour, , Cairo",
  cartItems: [
    %{
      "_id" => "x7LBubGSG",
      "title" => "Midi dress in pink ditsy floral",
      "price" => "14",
      "count" => "1"
    }
  ],
  total: 14
})
