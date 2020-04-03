# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

premade_user =  User.create(first_name: "Premade", last_name: "Packager", email:"premadepackager@example.com", password:"Pr3mad4Pack")

premade_package_dogs = Package.create(id: "PremadeDogs", users_id: premade_user.id, created_at: Time.now, updated_at: Time.now)

elements_for_dog_package = [
  ["https://bit.ly/2Jxd8tE", "dog with glasses", "PremadeDogs"],
  ["https://media.giphy.com/media/4Zo41lhzKt6iZ8xff9/giphy.gif", "Husky Ears Gif", "PremadeDogs"]
]