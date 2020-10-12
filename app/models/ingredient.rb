class Ingredient < ApplicationRecord
    has_many :recipes, through: :recipe_ingredients
    has_many :users, through: :allergen
end
