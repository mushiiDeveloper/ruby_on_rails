# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.create!(name: "Lviv", country: "Ukraine")
City.create!(name: "Ternopil", country: "Ukraine")
City.create!(name: "London", country: "England")

User.create!(username: "User1", password: "user1_123", email: "user1_123@gmail.com", phone_number: "0681111111", city_id: City.find(1).id)
User.create!(username: "User2", password: "user2_123", email: "user2_123@gmail.com", phone_number: "0682222222", city_id: City.find(2).id)
User.create!(username: "User3", password: "user3_123", email: "user3_123@gmail.com", phone_number: "0683333333", city_id: City.find(3).id)
User.create!(username: "User4", password: "user4_123", email: "user4_123@gmail.com", phone_number: "0684444444", city_id: City.find(1).id)


Category.create!(name: "Some")
Category.create!(name: "clothes")
Category.create!(name: "other")

Item.create!(name: "Footwear s.43", user_id: User.find(1).id, category_id: Category.find(2).id)
Item.create!(name: "iPhone 7", user_id: User.find(2).id, category_id: Category.find(1).id)
Item.create!(name: "VW Phaeton", user_id: User.find(3).id, category_id: Category.find(3).id)

Booking.create!(start_time: "2018-08-16 00:00:00", end_time: "2018-09-13 00:00:00", item_id: Item.find(1).id)
Booking.create!(start_time: "2018-04-16 00:00:00", end_time: "2019-04-16 00:00:00", item_id: Item.find(2).id)
Booking.create!(start_time: "2018-07-16 00:00:00", end_time: "2018-12-21 00:00:00", item_id: Item.find(3).id)

Review.create!(text: "Some new comment", author_id: User.find(1).id, feedbacked_id: 2, feedbacked_type: "User")
Review.create!(text: "Very good man, +", author_id: User.find(3).id, feedbacked_id: 1, feedbacked_type: "User")
Review.create!(text: "Some new comment", author_id: User.find(2).id, feedbacked_id: 3, feedbacked_type: "Item")
