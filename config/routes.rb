Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  post 'sessions/destroy', to: 'sessions#destroy'
  get 'premade/dogs'
  get 'user/signup'
  get 'home/index'
  get '/users/signup'

  post 'users/signup', to: 'users#create'
 
  resources :articles
  resources :users

  root 'users#signup'
end
