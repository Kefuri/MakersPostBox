# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

premade_user =  User.create(first_name: "Premade", last_name: "Packager", email:"premadepackager@example.com", password:"Pr3mad4Pack")

premade_package_dogs = Package.create(users_id: premade_user.id, created_at: Time.now, updated_at: Time.now)


elements_for_dog_package = [
  ["https://bit.ly/2Jxd8tE", "dog with glasses"],
  ["https://media.giphy.com/media/4Zo41lhzKt6iZ8xff9/giphy.gif", "Husky Ears Gif"],
  ["https://www.youtube.com/embed/3ggIHfwkIWM", "video_puppy"],
  ["https://images.unsplash.com/photo-1520087619250-584c0cbd35e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=685&q=80", "puppy"],
  ["https://www.youtube.com/embed/Psv5dmrs3U0" , "vide_funny_puppy"],
  ["https://images.unsplash.com/photo-1548658166-136d9f6a7e76?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60", "puppy yawning"],
  ["https://images.unsplash.com/photo-1516371535707-512a1e83bb9a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "dog"], 
]

elements_for_dog_package.each do | link, alt_tag |
  Element.create(link: link, alt_tag: alt_tag, packages_id: premade_package_dogs.id)
end