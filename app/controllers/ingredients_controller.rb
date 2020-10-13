class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end


# Ingredient.all.map {|ingr| Allergen.all.count{|a| a.ingredient_id == ingr.id } }