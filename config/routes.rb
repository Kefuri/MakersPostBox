Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/signup'
  post 'users/signup', to: 'users#create'
  get 'users/signin'
  post 'users/signin', to: 'sessions#create'
  get 'users/destroy', to: 'sessions#destroy'

  get 'premade/dogs'
  get 'home/index'

  resources :articles
  resources :users
  resources :sessions

  root 'home#index'
end
