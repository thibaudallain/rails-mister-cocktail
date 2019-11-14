class DosesController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = params[:dose][:ingredient_id]
    @description = params[:dose][:description]
    @dose = Dose.new(cocktail_id: @cocktail.id, ingredient_id: @ingredient, description: @description)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end
end
