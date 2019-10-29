class Cuisine < ApplicationRecord
  has_many :recipes

  validates_presence_of :name, message: 'Você deve informar o nome da cozinha'
end
