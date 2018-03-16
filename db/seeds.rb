# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'


require 'open-uri'
require 'json'

list = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

list["drinks"].each do |x|
 Ingredient.create!({name:  x["strIngredient1"]})
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "club soda")
# Ingredient.create(name: "brown sugar")
