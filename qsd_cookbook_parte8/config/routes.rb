Rails.application.routes.draw do

  root to: 'recipes#index'
  get 'recipe_types/new', to: 'recipe_types#new'
  resources :recipes
  resources :recipe_types

end
