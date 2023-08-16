# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
burger_de_la_ville = { name: "Burger de la ville", phone_number: "07 82 75 91", category: "french", address: "123 fake street" }
chez_claudette = { name: "Chez claudette", phone_number: "023 34 75 12", category: "belgian", address: "123 fake street" }
fugazzi = { name: "Sushi Time", phone_number: "012 39 22 33", category: "japanese", address: "522 fake street"}
cafe_de_paris = { name: "Café de Paris", phone_number: "01 39 22 33", category: "french", address: "331 fake street" }
sushi_time = {name: "Sushi Time", phone_number: "012 39 22 33", category: "japanese", address: "1921 fake street"}

[burger_de_la_ville, chez_claudette, fugazzi, cafe_de_paris, sushi_time].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
