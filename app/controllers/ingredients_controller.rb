class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update]

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to @ingredient, notice: 'Ingredient was successfully created.'
    else
      render :new
    end
  end

  def new
    @ingredient = Ingredient.new
  end

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
  end

  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :recipe_id)
  end
end