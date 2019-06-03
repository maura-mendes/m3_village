# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "destroying all data"
RoomAttachment.destroy_all
Room.destroy_all

puts "creating"



room1 = Room.create!({
  name: "Double Room",
  capacity: 2,
  size: 50,
  bed: 1,
  })
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_565/v1545314159/Room1.jpg")
# room1.room_attachments.create!({photo: open("https://api.cloudinary.com/v1_1/demo/image/upload") })
 

room2 = Room.create!({
  name: "Kind size room",
  capacity: 2,
  size: 50,
  bed: 1,
})
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_565/v1545314182/Room2.jpg")
