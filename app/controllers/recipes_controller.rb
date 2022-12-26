class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
  end

  def create
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :category)
  end


end
