class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe_ingredient = RecipeIngredient.new(recipe: @recipe)
  end

  def create
    recipe = Recipe.create
    redirect_to recipe
  end
end