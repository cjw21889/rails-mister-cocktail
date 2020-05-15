class RemoveIngredientImgFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :ingredient_img
  end
end
