# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

avatar = ["https://i1.sndcdn.com/artworks-nSg4FmROOIqYrYy4-kUeQvw-t500x500.jpg", "https://ih1.redbubble.net/image.811959095.5400/flat,750x,075,f-pad,750x1000,f8f8f8.jpg", "https://pbs.twimg.com/media/E5M4wHSUcAAab62.jpg", "https://bg.freekaamal.net/images/156/156756/1788d1a753d1088501f4f594567aa29e.jpg", "https://i.ytimg.com/vi/5tcCO-JF4wY/maxresdefault.jpg", "https://i.redd.it/r59utc8zpn271.jpg", "https://s3-prod.adage.com/s3fs-public/20200904_pornhubLaborDay_3x2.jpg", "https://memegenerator.net/img/images/300x300/73069803.jpg", "https://i.pinimg.com/1200x/39/57/75/395775d7c93faaf1eb5d9d791783fe3a.jpg", "https://pbs.twimg.com/media/Dg66bqFW0AAihr6.jpg"]


20.times do |x|
  user = User.create!(email: Faker::Internet.email, nickname: "User" + x.to_s, password: Faker::Lorem.characters(number: 12, min_alpha: 4, min_numeric: 2), image_url: avatar.sample)
end

user = User.create!(email: "theo@test.com", nickname: "theo99", password: "password", is_admin: true, image_url: avatar.sample)
user = User.create!(email: "rapha@test.com", nickname: "rapha99", password: "password", is_admin: true, image_url: avatar.sample)
user = User.create!(email: "audrey@test.com", nickname: "audrey99", password: "password", is_admin: true, image_url: avatar.sample)
user = User.create!(email: "bruno@test.com", nickname: "bruno99", password: "password", is_admin: true, image_url: avatar.sample)


20.times do
  instructor = Instructor.create!(email: Faker::Internet.email, nickname: Faker::Name.first_name, password: Faker::Lorem.characters(number: 12, min_alpha: 4, min_numeric: 2), siret: Faker::Number.number(digits: 14), website: "https://fr.wikipedia.org/wiki/Michel_Cr%C3%A9mad%C3%A8s#/media/Fichier:Michel_Cremades.jpg", description: Faker::Lorem.characters(number: rand(25..1000)), image_url: "https://cdn1.vente-unique.com/thumbnails/product/105/105689/full_size/xs/bureau_345305.jpg")
end

instructor = Instructor.create!(email: "theo@test.com", nickname: "theo99", password: "password", siret: Faker::Number.number(digits: 14), website: "https://fr.wikipedia.org/wiki/Michel_Cr%C3%A9mad%C3%A8s#/media/Fichier:Michel_Cremades.jpg", description: Faker::Lorem.characters(number: rand(25..1000)), image_url: "https://cdn1.vente-unique.com/thumbnails/product/105/105689/full_size/xs/bureau_345305.jpg")
instructor = Instructor.create!(email: "rapha@test.com", nickname: "rapha99", password: "password", siret: Faker::Number.number(digits: 14), website: "https://fr.wikipedia.org/wiki/Michel_Cr%C3%A9mad%C3%A8s#/media/Fichier:Michel_Cremades.jpg", description: Faker::Lorem.characters(number: rand(25..1000)), image_url: "https://cdn1.vente-unique.com/thumbnails/product/105/105689/full_size/xs/bureau_345305.jpg")
instructor = Instructor.create!(email: "audrey@test.com", nickname: "audrey99", password: "password", siret: Faker::Number.number(digits: 14), website: "https://fr.wikipedia.org/wiki/Michel_Cr%C3%A9mad%C3%A8s#/media/Fichier:Michel_Cremades.jpg", description: Faker::Lorem.characters(number: rand(25..1000)), image_url: "https://cdn1.vente-unique.com/thumbnails/product/105/105689/full_size/xs/bureau_345305.jpg")
instructor = Instructor.create!(email: "bruno@test.com", nickname: "bruno99", password: "password", siret: Faker::Number.number(digits: 14), website: "https://fr.wikipedia.org/wiki/Michel_Cr%C3%A9mad%C3%A8s#/media/Fichier:Michel_Cremades.jpg", description: Faker::Lorem.characters(number: rand(25..1000)), image_url: "https://cdn1.vente-unique.com/thumbnails/product/105/105689/full_size/xs/bureau_345305.jpg")


20.times do
  random_boolean = [true, false].sample
  random_scale = ["hour", "week", "month", "year"].sample
  course = Course.create!(title: Faker::Lorem.characters(number: rand(15..140)), price: rand(0..9999), has_diploma: random_boolean, description: Faker::Lorem.characters(number: rand(50..2000)), is_remote: random_boolean, adress: Faker::Address.street_address, zip_code: Faker::Address.zip_code, start_date: Faker::Date.forward(days: rand(5..350)), duration: rand(0..12), duration_scale: random_scale, image_url: "https://i.dell.com/is/image/DellContent//content/dam/global-asset-library/Products/Notebooks/XPS/17_9700_non-touch/xs9700nt_cnb_00055lf110_gy.psd?fmt=pjpg&pscan=auto&scl=1&hei=402&wid=701&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0&size=701,402")
end






10.times do
  favorite = Favorite.create!(user_id: rand(User.first.id..User.last.id), course_id: rand(Course.first.id..Course.last.id))
end

5.times do
  comment = Comment.create!(user_id: rand(User.first.id..User.last.id), course_id: rand(Course.first.id..Course.last.id), content:Faker::Lorem.characters(number: rand(25..500)))
end



