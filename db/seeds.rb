# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do |i|
    Movie.create(name: Faker::Movie.title, synopsis: Faker::Movie.quote, director: Faker::Name.name)
end

10.times do |i|
    Serie.create(name: Faker::Movie.title, synopsis: Faker::Movie.quote, director: Faker::Name.name)
end
  
10.times do |i|
    Documentaryfilm.create(name: Faker::Movie.title, synopsis: Faker::Movie.quote, director: Faker::Name.name)
end

 puts "Seeds realiazdo"