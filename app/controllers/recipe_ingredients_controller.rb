class RecipeIngredients < ApplicationController
  def create
    recipe_ingredient = RecipeIngredient.create
    redirect_to recipe_ingredient.recipe
  end
end