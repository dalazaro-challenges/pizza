# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Cashier")
User.create(name: "Baker")
User.create(name: "Manager")

Order.create(name: "Daryl", phone: "5105551234", size: "Medium", toppings: "Pepperoni", ready: false)
Order.create(name: "James S.", phone: "2095557890", size: "Large", toppings: "Cheese", ready: false)
Order.create(name: "Chris F.", phone: "8085554321", size: "Small", toppings: "Hawaiian", ready: false)
