# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TestUser.create!(id: 1, user_id: "123", scout: 111, handcannon: 222, pulse: 333, auto: 444)
TestUser.create!(id: 2, user_id: "456", scout: 555, handcannon: 666, pulse: 777, auto: 888)
