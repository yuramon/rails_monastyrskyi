# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "Huawei MediaPad M5", description: "an Android tablet built for ultimate entertainment", price: 300, cart: Cart.first)
Product.create(name: "Vacumcleaner", description: "High-teche smart vacumcleaner", price: 112, cart: Cart.first)
Product.create(name: "Polk Audio Signature Series S55", description: "Audio Speakers", price: 249, cart: Cart.find(2))
Product.create(name: "Polk Audio Signature Series S30", description: "Audio Speakers", price: 199, cart: Cart.find(2))