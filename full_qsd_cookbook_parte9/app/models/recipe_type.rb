class RecipeType < ApplicationRecord
  has_many :recipes

  validates_presence_of :name, message: 'Você deve informar o nome do tipo de receita'
end
