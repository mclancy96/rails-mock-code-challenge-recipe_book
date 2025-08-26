class Recipe < ApplicationRecord
  has_many :chef_recipes
  has_many :chefs, through: :chef_recipes
end
