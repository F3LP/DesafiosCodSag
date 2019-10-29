class AddRelCuisine < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :cuisine, index: true, foreign_key: true
  end
end
