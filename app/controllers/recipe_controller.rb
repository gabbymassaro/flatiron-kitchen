class RecipeController < ApplicationController
  def create
    recipe = Recipe.create
  end
end