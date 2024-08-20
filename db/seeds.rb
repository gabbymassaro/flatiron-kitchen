# db.seed
Recipe.destroy_all
Ingredient.destroy_all

puts "Seeding recipes...🌱"
recipe1 = Recipe.create!(name: "Pasta Party")
recipe2 = Recipe.create!(name: "Fruit Salad, Yummy Yummy")
recipe3 = Recipe.create!(name: "Dirt Cups")

puts "Seeding ingredients...🌱"
ingredient1 = Ingredient.create!(name: "Rigatoni", recipe_id: recipe1.id)
ingredient2 = Ingredient.create!(name: "Tomato Sauce", recipe_id: recipe1.id)
ingredient3 = Ingredient.create!(name: "Apples", recipe_id: recipe2.id)
ingredient4 = Ingredient.create!(name: "Chocolate Pudding", recipe_id: recipe3.id)

puts "Seed data successfully created!"