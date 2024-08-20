class IngredientController < ApplicationController
  def create
    ingredient = Ingredient.create
  end

  def index

  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end