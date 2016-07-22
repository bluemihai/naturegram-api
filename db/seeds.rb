# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Environment variables (ENV['...']) can be set in the file .env file.


a = User.create!(name: "Abigail", role: 'admin')
(2..5).each do |idx|
  User.create!(name: "User #{idx}", role: 'user')  
end

lg = Location.create!(title: 'Learners Guild', city: 'Oakland')
Location.create!(title: 'Great Mall', city: 'Milpitas')
Location.create!(title: 'Coit Tower', city: 'San Francisco')

abigail_photos = [
  'http://i.imgur.com/vDB8nSwl.jpg',
  'http://i.imgur.com/GCe56pml.jpg',
  'http://i.imgur.com/9rF0uUwl.jpg',
  'http://i.imgur.com/QnhaauEl.jpg',
  'http://i.imgur.com/9OQnnl1l.jpg',
  'http://i.imgur.com/s01Nzdvl.jpg?1',
  'http://i.imgur.com/YDzyl72l.jpg',
  'http://i.imgur.com/R7OVO4Hl.jpg',
  'http://i.imgur.com/hAo336zl.jpg'
]

abigail_photos.each_with_index do |photo_url, idx|
  a.pictures.create(title: "Picture #{idx}", pic_url: photo_url, location: lg)
end
