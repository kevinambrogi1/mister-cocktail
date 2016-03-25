class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      flash[:notice] = "Success!"
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def add
  end

  def delete
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
