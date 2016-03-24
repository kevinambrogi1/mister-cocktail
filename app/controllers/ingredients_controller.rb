class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = @cocktail.igredients.build
  end

  def create
  end

  def add
  end

  def delete
  end
end
