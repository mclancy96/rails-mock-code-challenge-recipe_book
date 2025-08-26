# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

Chef.destroy_all
Recipe.destroy_all
ChefRecipe.destroy_all

chefs = [
  "Gordon Ramsay",
  "Julia Child",
  "Alice Waters",
  "Massimo Bottura",
  "Dominique Crenn",
  "Yotam Ottolenghi"
]

recipes = [
  "Classic Ratatouille",
  "Chocolate Soufflé",
  "Lemon Tart",
  "Truffle Risotto",
  "Roast Chicken Provençal",
  "Vegan Paella"
]

chef_records = chefs.map { |name| Chef.create!(name: name) }
recipe_records = recipes.map { |name| Recipe.create!(name: name) }

# Join table seed data
join_data = [
  { chef: "Gordon Ramsay", recipe: "Truffle Risotto", comment: "Signature dish with bold flavors" },
  { chef: "Julia Child", recipe: "Roast Chicken Provençal", comment: "Classic French home cooking" },
  { chef: "Alice Waters", recipe: "Vegan Paella", comment: "Seasonal and farm-to-table inspired" },
  { chef: "Massimo Bottura", recipe: "Classic Ratatouille", comment: "Modern twist on a French staple" },
  { chef: "Dominique Crenn", recipe: "Chocolate Soufflé", comment: "Delicate and artfully presented" },
  { chef: "Yotam Ottolenghi", recipe: "Lemon Tart", comment: "Bright and citrus-forward" }
]

join_data.each do |jr|
  chef = Chef.find_by(name: jr[:chef])
  recipe = Recipe.find_by(name: jr[:recipe])
  ChefRecipe.create!(chef: chef, recipe: recipe, comment: jr[:comment])
end
