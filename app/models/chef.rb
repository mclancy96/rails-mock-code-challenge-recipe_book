class Chef < ApplicationRecord
  has_many :chef_recipes
  has_many :recipes, through: :chef_recipes

  accepts_nested_attributes_for :chef_recipes, reject_if: :all_blank
end
