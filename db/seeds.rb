# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'


Cocktail.destroy_all
Ingredient.destroy_all

Cocktail.create(name: "Sunset Caparica")
Cocktail.create(name: "Baixa a bola")
Cocktail.create(name: "Drink more")
Cocktail.create(name: "Headache the day after")
Cocktail.create(name: "You'll regret drinking this S#")

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

ingredients = open(url).read
result = JSON.parse(ingredients)
result["drinks"].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end


