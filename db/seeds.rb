# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.destroy_all
Seller.destroy_all
Product.destroy_all
Purchase.destroy_all

kauan = Client.create!(name: 'Kauan')
vini = Seller.create!(name: 'Vinicius')

coffee = Product.create!(name: 'Café', price: 12.0)
milk = Product.create!(name: 'Leite de soja', price: 5.9)

Purchase.create!(client_id: kauan.id, seller_id: vini.id)
