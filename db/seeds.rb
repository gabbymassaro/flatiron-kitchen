# db/seeds.rb

Recipe.destroy_all
Ingredient.destroy_all

puts "Seeding recipes...🌱"
recipe1 = Recipe.create!(name: "Chocolate Chip Cookies")
recipe2 = Recipe.create!(name: "Pancakes")
recipe3 = Recipe.create!(name: "Vanilla Cake")

puts "Seeding ingredients...🌱"
ingredient1 = Ingredient.create!(name: "Flour")
ingredient2 = Ingredient.create!(name: "Sugar")
ingredient3 = Ingredient.create!(name: "Butter")
ingredient4 = Ingredient.create!(name: "Eggs")
ingredient5 = Ingredient.create!(name: "Milk")
ingredient6 = Ingredient.create!(name: "Baking Powder")
ingredient7 = Ingredient.create!(name: "Vanilla Extract")
ingredient8 = Ingredient.create!(name: "Salt")
ingredient9 = Ingredient.create!(name: "Chocolate Chips")

puts "Seeding recipe ingredients...🌱"
RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient1.id) # Flour for Cookies
RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient2.id) # Sugar for Cookies
RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient3.id) # Butter for Cookies
RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient4.id) # Eggs for Cookies
RecipeIngredient.create!(recipe_id: recipe1.id, ingredient_id: ingredient9.id) # Chocolate Chips for Cookies

RecipeIngredient.create!(recipe_id: recipe2.id, ingredient_id: ingredient1.id) # Flour for Pancakes
RecipeIngredient.create!(recipe_id: recipe2.id, ingredient_id: ingredient5.id) # Milk for Pancakes
RecipeIngredient.create!(recipe_id: recipe2.id, ingredient_id: ingredient4.id) # Eggs for Pancakes
RecipeIngredient.create!(recipe_id: recipe2.id, ingredient_id: ingredient6.id) # Baking Powder for Pancakes
RecipeIngredient.create!(recipe_id: recipe2.id, ingredient_id: ingredient8.id) # Salt for Pancakes

RecipeIngredient.create!(recipe_id: recipe3.id, ingredient_id: ingredient1.id) # Flour for Cake
RecipeIngredient.create!(recipe_id: recipe3.id, ingredient_id: ingredient2.id) # Sugar for Cake
RecipeIngredient.create!(recipe_id: recipe3.id, ingredient_id: ingredient3.id) # Butter for Cake
RecipeIngredient.create!(recipe_id: recipe3.id, ingredient_id: ingredient4.id) # Eggs for Cake
RecipeIngredient.create!(recipe_id: recipe3.id, ingredient_id: ingredient7.id) # Vanilla Extract for Cake

puts "Seed data successfully created!"
