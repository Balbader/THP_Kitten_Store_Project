# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prices = [123.99, 567.99, 1112.99, 138.99, 154.99, 105.99, 163.99, 197.99, 1890.99, 3999.99]

 10.times do
  product.create(title: Faker::Creature::Cat.name, price: prices.sample)
 end

#User.create!(email: "admin@admin.com", first_name: "Admin", last_name: "The Boss", password: "admin01", is_admin: true)
# 1.times do |i|
#   User.create!(email: "user#{i+2}@user.com", password: "tests#{i+2}", first_name: "José #{i+2}", last_name: "Josiane #{i+2}")
# end

 1.times do |i|
   CartItem.create!(cart_id: 1, item_id: rand(1..20))
 end


 1.times do |i|
  Order.create!(user_id: 1, cart_id: i+1, total: 100)
end
# puts "order cree"