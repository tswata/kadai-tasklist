Rails.application.routes.draw do
 
  get 'users/new'

  get 'users/create'

  root to: "sessions#new"
  get "signup", to: "users#new"
  resources :users, only:[:new, :create]
  resources :tasks
end
