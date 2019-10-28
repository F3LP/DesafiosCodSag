class AddRecipeToRecipeType < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :recipe_type, index: true, foreign_key: true
  end
end
