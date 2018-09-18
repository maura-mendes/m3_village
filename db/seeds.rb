# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "destroying all data"
Room.destroy_all
puts "creating"



room1 = Room.create!({
  name: "Double Room",
  capacity: 2,
  size: 50,
  bed: 1,
})
walk.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1520446746/street-art-kobra.jpg")


room2 = Room.create!({
  name: "Kind size room",
  capacity: 2,
  size: 50,
  bed: 1,
})