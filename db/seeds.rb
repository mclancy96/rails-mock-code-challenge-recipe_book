# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

Chef.destroy_all
Recipe.destroy_all

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

chefs.each do |chef|
  Chef.create(name: chef)
end

recipes.each do |recipe|
  Recipe.create(name: recipe)
end
