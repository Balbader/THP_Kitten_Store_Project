# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prices = [10.99, 11.99, 12.99, 13.99, 14.99, 15.99, 16.99, 17.99, 18.99, 19.99]

 10.times do 
  Item.create!(title: Faker::Book.title, description: Faker::Lorem.sentence(5), price:  prices.sample, image_url: Faker::LoremFlickr.image)
 end

#User.create!(email: "admin@admin.com", first_name: "Admin", last_name: "The Boss", password: "admin01", is_admin: true)
# 1.times do |i|
#   User.create!(email: "user#{i+2}@user.com", password: "tests#{i+2}", first_name: "José #{i+2}", last_name: "Josiane #{i+2}")
# end 

# 1.times do |i|
#   CartItem.create!(cart_id: 1, item_id: rand(1..20))
# end


# 1.times do |i|
#   Order.create!(user_id: 1, cart_id: i+1, total: 100)
# end
# puts "order cree"