class ChefRecipe < ApplicationRecord
  belongs_to :chef
  belongs_to :recipe

  validates :comment, presence: true, length: { minimum: 1 }
  validates :recipe, presence: true
end
