class IngredientsController < ApplicationController
  def create
    ingredient = Ingredient.create
  end

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end