class Recipe < ApplicationRecord
  belongs_to :recipe_type
  belongs_to :cuisine

  validates_presence_of :title, :cuisine, :recipe_type, :difficulty, :cook_time,
            :ingredients, :cook_method, message: 'Você deve informar o nome do tipo de receita'

  def cook_time_min
    "#{cook_time} minutos"
  end
end
