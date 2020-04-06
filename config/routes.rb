Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/signup'
  post 'users/signup', to: 'users#create'
  get 'users/signin'
  post 'users/signin', to: 'sessions#create'
  get 'users/destroy', to: 'sessions#destroy'

  get 'premade/dogs'
  get 'premade/edit', to: 'premade#edit', as: 'premade'

  get 'home/index'

  resources :articles
  resources :users
  resources :sessions

  namespace :premade do
    resources :dogs, :cats
  end

  root 'users#signup'
end
