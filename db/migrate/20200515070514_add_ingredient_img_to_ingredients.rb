class AddIngredientImgToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :ingredient_img, :string
  end
end
