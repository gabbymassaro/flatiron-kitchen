Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  resources :recipe_ingredients
end
