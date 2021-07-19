Rails.application.routes.draw do
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/edit'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'home/index'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }

  root to: "home#index"
  resources :users
  resources :recipes
end
