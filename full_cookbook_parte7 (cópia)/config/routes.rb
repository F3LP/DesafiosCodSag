Rails.application.routes.draw do
  resources :recipe_types
  root to: 'recipes#index'
  resources :recipes
end
