# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

premade_user =  User.create(first_name: "Premade", last_name: "Packager", email: "premadepackager@example.com", password: "Pr3mad4Pack")

premade_package_dogs = Package.create(users_id: premade_user.id, created_at: Time.now, updated_at: Time.now, premadepackage: "dogs")

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

premade_package_cats = Package.create(users_id: premade_user.id, created_at: Time.now, updated_at: Time.now, premadepackage: "cats")

elements_for_cats = [
  ["https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1942&q=80", "bedcovers kitty"],
  ["https://images.unsplash.com/photo-1415369629372-26f2fe60c467?ixlib=rb-1.2.1&auto=format&fit=crop&w=2734&q=80", "hi five"],
  ["https://images.unsplash.com/photo-1526336024174-e58f5cdd8e13?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80§", "butterfly kitty"],
  ["https://images.unsplash.com/photo-1560509923-5a0de7e060a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1558&q=80", "cuddling kittens"],
  ["https://www.youtube.com/embed/-8JQB_wXjmk", "cute cats video"],
  ["https://www.youtube.com/embed/WXWfhvK7TM0","cats being cute video"],
  ["https://www.youtube.com/embed/uHKfrz65KSU", "more cute cats video"],
  ["https://images.unsplash.com/photo-1533738363-b7f9aef128ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80", "sunglasses cat"],
]

elements_for_cats.each do | link, alt_tag |
  Element.create(link: link, alt_tag: alt_tag, packages_id: premade_package_cats.id)
end

premade_package_scenery = Package.create(users_id: premade_user.id, created_at: Time.now, updated_at: Time.now, premadepackage: "scenery")

elements_for_scenery = [
  ["https://www.youtube.com/embed/DQuhA5ZCV9M", "scenery video"],
  ["https://images.unsplash.com/photo-1472213984618-c79aaec7fef0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1378&q=80", "small waterfall"],
  ["https://www.youtube.com/embed/BHACKCNDMW8", "nature scenery video"],
  ["https://images.unsplash.com/photo-1502318217862-aa4e294ba657?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=958&q=80", "starry vertical sky"],
  ["https://images.unsplash.com/photo-1431411207774-da3c7311b5e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80", "beach bay view"],
  ["https://images.unsplash.com/photo-1544392827-1fc9d8111cb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1001&q=80", "city sunset"],
  ["https://www.youtube.com/embed/TdpBRZ0dZhw", "other scenery video"],
  ["https://www.youtube.com/embed/M0j1cMEd94Q", "4k scenery video"],
]

elements_for_scenery.each do | link, alt_tag |
  Element.create(link: link, alt_tag: alt_tag, packages_id: premade_package_scenery.id)
end

premade_package_messages = Package.create(users_id: premade_user.id, created_at: Time.now, updated_at: Time.now, premadepackage: "messages")

elements_for_messages = [
  ["https://images.unsplash.com/photo-1583848697106-f0339cbb6ab2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=882&q=80", "feel loved"],
  ["https://images.unsplash.com/photo-1536363521351-bf653405d5ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1948&q=80", "where you are"],
  ["https://images.unsplash.com/photo-1529724778170-491b776b49cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80", "gonna be fine"],
  ["https://images.unsplash.com/photo-1546748070-113645b6f9a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80", "be kind"],
  ["https://images.unsplash.com/photo-1583615475309-f62a2415edf2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80", "know loved"],
  ["https://ksr-ugc.imgix.net/assets/021/747/364/a9edfcda4f8efed3d591b3a2e9fbb41a_original.jpg?ixlib=rb-2.1.0&crop=faces&w=1552&h=873&fit=crop&v=1530308704&auto=format&frame=1&q=92&s=b4d3a736c4c617ac8fa4447769e14214", "attention"],
  ["https://images.unsplash.com/photo-1496449903678-68ddcb189a24?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80", "sign"],
  ["https://images.unsplash.com/photo-1553002401-c0945c2ff0b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80", "not lost"],
]

elements_for_messages.each do | link, alt_tag |
  Element.create(link: link, alt_tag: alt_tag, packages_id: premade_package_messages.id)
end

premade_package_love = Package.create(users_id: premade_user.id, created_at: Time.now, updated_at: Time.now, premadepackage: "love")

elements_for_love = [
  ["https://images.unsplash.com/photo-1518568814500-bf0f8d125f46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80", "light heart"],
  ["https://images.unsplash.com/photo-1518464622742-9aeb03009561?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1956&q=80", "i heart u"],
  ["https://images.unsplash.com/photo-1516589091380-5d8e87df6999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80", "love hands"],
  ["https://images.unsplash.com/photo-1501747188-61c00b3d8ba0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80", "love macaroons"],
  ["https://images.unsplash.com/photo-1529912626516-e58b23f44f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80", "rainbow love"],
  ["https://images.unsplash.com/photo-1477531210390-1fcc48835750?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "love chimes"],
  ["https://images.unsplash.com/photo-1516714612186-b44521178ca9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80", "love confetti"],
]

elements_for_love.each do | link, alt_tag |
  Element.create(link: link, alt_tag: alt_tag, packages_id: premade_package_love.id)
end
