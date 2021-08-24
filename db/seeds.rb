# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Removing all caravans..."
Caravan.destroy_all

puts "Adding caravans..."

Caravan.create(name: "Super caravan", description: "Best caravan in the world and for a very good price", built_year: 1984, brand: "Airstream", daily_rate: 20, user_id: 1)
Caravan.create(name: "Old caravan", description: "A real classic", built_year: 1962, brand: "Golden Oldie", daily_rate: 50, user_id: 1)
Caravan.create(name: "Modern caravan", description: "A new caravan", built_year: 2020, brand: "Airstream", daily_rate: 80, user_id: 1)
Caravan.create(name: "Big caravan", description: "For the entire family", built_year: 2015, brand: "Airstream", daily_rate: 120, user_id: 1)

puts "Caravans added!"
