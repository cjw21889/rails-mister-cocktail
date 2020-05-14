class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = all_ingredients
  end

  def all_ingredients
    ingredients = Ingredient.all
    ingredients_array = []
    ingredients.each do |i|
      ingredients_array << i.name
    end
    return ingredients_array
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find_by(name: params[:dose][:ingredient])
    @dose.ingredient = @ingredient
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
