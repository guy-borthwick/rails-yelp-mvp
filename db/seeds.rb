# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '123-456-7890', category: 'french'}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "123-456-7891", category: "japanese"}
sushi_zen = {name: "Sushi Zen", address: "56 Main Street", phone_number: "123-456-7991", category: "japanese"}
pasta_bella = {name: "Pasta Bella", address: "114 Main St", phone_number: "123-456-7892", category: "italian"}
wonton_king = {name: "Wonton King", address: "115 Main St", phone_number: "123-456-7893", category: "chinese"}

[dishoom, pizza_east, sushi_zen, pasta_bella, wonton_king].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
