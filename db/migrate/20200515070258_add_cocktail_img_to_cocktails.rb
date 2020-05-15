class AddCocktailImgToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :cocktail_img, :string
  end
end
