class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
    @ingredients = Ingredient.all
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @ingredient = params['ingredient'].nil? ? Ingredient.find(3) : Ingredient.find(params['ingredient'])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
