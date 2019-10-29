Rails.application.routes.draw do

  root to: 'recipes#index'
  resources :cuisines
  resources :recipes
  resources :recipe_types
end
