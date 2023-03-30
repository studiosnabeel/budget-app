# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name:'nabeel', photo: 'https://avatars.githubusercontent.com/u/59531743?v=4', email: 'nabeel@gmail.com', password: 'nabeel1234', confirmed_at: Time.now)

Category.create(name: 'Food', icon: 'https://img.icons8.com/ios/50/000000/food.png', author: User.first)

Category.create(name: 'Transportation', icon: 'https://img.icons8.com/ios/50/000000/bus.png', author: User.first)

Tran.create(name: 'Burger', amount: 10, author: User.first)
CategoryTran.create(category: Category.first, tran: Tran.first)

Tran.create(name: 'Pizza', amount: 15, author: User.first)
CategoryTran.create(category: Category.first, tran: Tran.last)