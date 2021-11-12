require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = JSON.parse(URI.open(url).read)
drinks = response['drinks']
puts "Destroying ingredients"

Ingredient.destroy_all
puts "Adding new ingredients"
drinks.each do |drink|
  Ingredient.create!(
    name: drink['strIngredient1']
  )
end

puts "Ingredients added!"
