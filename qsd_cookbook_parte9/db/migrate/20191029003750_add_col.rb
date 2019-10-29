class AddCol < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :recipe_type, :text
    add_column :recipes, :cuisine, :text
  end
end
