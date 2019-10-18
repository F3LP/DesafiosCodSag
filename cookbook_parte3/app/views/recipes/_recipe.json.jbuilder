json.extract! recipe, :id, :title, :recipe_type, :cuisine, :difficulty, :cook_time, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
