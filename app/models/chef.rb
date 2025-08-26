class Chef < ApplicationRecord
  has_many :chef_recipes
  has_many :recipes, through: :chef_recipes
end
