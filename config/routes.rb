Rails.application.routes.draw do
  get 'ingredients/index'
  get 'ingredients/show'
  get 'users/index'
  get 'users/show'
  get 'recipes/index'
  get 'recipes/new'
  get 'recipes/create'
  resources :ingredients
  resources :recipes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
