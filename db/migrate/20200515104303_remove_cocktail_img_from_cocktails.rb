class RemoveCocktailImgFromCocktails < ActiveRecord::Migration[6.0]
  def change
    remove_column :cocktails, :cocktail_img
  end
end
