# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times {
    User.create(name: Faker::Name.unique.name)
}

50.times {
    Recipe.create!(title: Faker::Food.unique.dish, user_id: User.all.sample(1)[0].id)
}

150.times {
    Ingredient.create(name: Faker::Food.unique.ingredient)
}

Recipe.all.each do |recipe|
    3.times {
        RecipeIngredient.create(recipe_id: recipe.id, ingredient_id: Ingredient.all.sample(1)[0].id)
    }
end


25.times {
    Allergen.create(user_id: User.all.sample(1)[0].id, ingredient_id: Ingredient.all.sample(1)[0].id)
}