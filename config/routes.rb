Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/signup'
  post 'users/signup', to: 'users#create'
  get 'users/signin'
  post 'users/signin', to: 'sessions#create'
  get 'users/destroy', to: 'sessions#destroy'

  get 'premade/dogs'
  get 'premade/edit', to: 'premade#edit'
  get 'premade/share', to: 'premade#share'

  get 'packages/new_dogs'
  get 'packages/new_custom'
  get 'packages/customise_blank/:id', to: "packages#customise_blank"
  get '/packages/customise_dogs/:id', to: "packages#customise_dogs", as: 'customise'
  get 'home/index'

  resources :articles
  resources :users
  resources :sessions
  resources :packages
  resources :elements

  namespace :premade do
    resources :dogs, :cats
  end

  root 'home#index'

end
