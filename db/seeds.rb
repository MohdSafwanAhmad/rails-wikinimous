# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#   
require 'faker'
Article.delete_all
10.times do 
  title = [Faker::Quotes::Rajnikanth.joke, Faker::Quotes::Shakespeare.hamlet_quote, Faker::Book.title].sample
  content = Faker::Lorem.words(number: 20).join(" ")
  article = Article.new(title: title, content: content)
  article.save
  print article
end
