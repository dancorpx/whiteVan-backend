# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: "dan", theif_id: "201724076541", area: "north chengdu")
User.create!(username: "callum", theif_id: "201725682152", area: "south chengdu")
User.create!(username: "jason", theif_id: "201787056763", area: "east chengdu")
Item.create!(name: "Motorbike",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    category: "Vehicle",
    price: 5000,
    seller_id: 1,
    quantity: 1)
Item.create!(name: "Shoes",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    category: "Clothing",
    price: 300,
    seller_id: 2,
    quantity: 5)
Item.create!(name: "Old Dirty Tools",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    category: "Construction",
    price: 2400,
    seller_id: 3,
    quantity: 15)
Item.create!(name: "Iphone X",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    category: "Electronics",
    price: 9000,
    seller_id: 1,
    quantity: 2)
Item.create!(name: "Necklace",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    category: "Jewlery",
    price: 30,
    seller_id: 2,
    quantity: 1)
Transaction.create!(seller_id: 1,
    item_id: 4,
    buyer_id: 3,
    lat: 30.665445785643275,
    lng: 104.0931378099534,
    sold?: false,
    chat_record_id: 1)
Transaction.create!(seller_id: 2,
    item_id: 5,
    buyer_id: 1,
    lat: 30.672386202549067,
    lng: 104.10840274616338,
    sold?: false,
    chat_record_id: 2)
ChatRecord.create!(message: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    user_id: 2)
ChatRecord.create!(message: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    user_id: 4)
