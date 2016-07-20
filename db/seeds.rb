# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Environment variables (ENV['...']) can be set in the file .env file.


(1..4).each do |idx|
  User.create!(name: "User #{idx}", role: 'user')  
end
User.create!(name: "User 5", role: 'admin')

lg = Location.create!(title: 'Learners Guild', city: 'Oakland')
Location.create!(title: 'Great Mall', city: 'Milpitas')
Location.create!(title: 'Coit Tower', city: 'San Francisco')

Picture.create(title: 'Flower', location: lg)