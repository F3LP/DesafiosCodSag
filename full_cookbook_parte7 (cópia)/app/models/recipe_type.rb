class RecipeType < ApplicationRecord

  has_many :recipes, dependent: :destroy

end
