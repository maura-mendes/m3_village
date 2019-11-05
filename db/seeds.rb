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
  name: "Sweet Room - Kilimajaro",
  capacity: 2,
  size: 80,
  bed: 1,
  price: 85, 
  description: "This pleasant and spacious executive room is stylish and glamorous, with about 80m2 in size. It offers great conditions to make you feel like at home! The room is equipped with a private bathroom, air conditioning, flat-screen TV and 
                many other amenities for your maximum comfort.",
  available: true
  })
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545314159/Room1.jpg")
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545316450/pillows.jpg")
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545316480/room1-day.jpg")
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545316459/chair.jpg")
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545316416/couch.jpg")
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/room-space.jpg")
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/tv.jpg")
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/mirror.jpg")
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/lavatorio.jpg")
room1.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/shower.jpg")

# room1.room_attachments.create!({photo: open("https://api.cloudinary.com/v1_1/demo/image/upload") })
 

room2 = Room.create!({
  name: "Sweet Room - Binga",
  capacity: 2,
  size: 80,
  bed: 1,
  price: 85,
  description: "This pleasant and spacious executive room is stylish and glamorous, with about 80m2 in size. It offers great conditions to make you feel like at home! The room is equipped with a private bathroom, air conditioning, flat-screen TV and 
                many other amenities for your maximum comfort.",
  available: true
})
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545314182/Room2.jpg")
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545316416/couch.jpg")
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545316440/towels.jpg")
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545316459/chair.jpg")
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_1000/v1545316472/quadros.jpg")
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/room-space.jpg")
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/tv.jpg")
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/mirror.jpg")
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/lavatorio.jpg")
room2.room_attachments.create!(photo: "https://res.cloudinary.com/dcu9atpmg/image/upload/c_scale,w_720/v1559911079/shower.jpg")



