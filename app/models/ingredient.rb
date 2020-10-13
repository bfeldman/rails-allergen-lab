class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients
    has_many :allergens
    has_many :users, through: :allergens
    
    def allergy_count
        Allergen.all.find_all { |a|
            a.ingredient_id == self.id
        }.count
    end
end