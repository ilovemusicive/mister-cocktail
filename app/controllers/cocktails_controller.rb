class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
     @cocktail = Cocktail.find(cocktail_params)
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)

    redirect_to cocktails_path
  end

  def new
    @cocktail = Cocktail.new
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
