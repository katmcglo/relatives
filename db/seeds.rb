require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# require 'faker'
FamilyMember.destroy_all
User.destroy_all

puts 'Creating two users...'
dareos = User.create(
  email: "dareos@gmail.com",
  password: "123456")
puts "User DareoscCreated"

kat = User.create(
  email: "kat@gmail.com",
  password: "123456")
puts "User Kat Created"
puts "===== Users created"

puts 'Creating relatives...'
grandma_one_img = URI.open("https://res.cloudinary.com/do3fkzte4/image/upload/v1594729128/kiop6rx38pedw8glmor3galwclat.jpg")
grandma_one = FamilyMember.new(
    name: "Brünhilde Meier",
    age: 87,
    description: "A tough old goat, but with a loving heart. Famed for her crunchy homemade sauerkraut.",
    kinship: "Grandma",
    user: dareos,
    city: "Munich",
    featured: true,
)
grandma_one.image.attach(io: grandma_one_img, filename: '2000_04zl0010-f.jpg', content_type: 'image/jpg')
grandma_one.save!