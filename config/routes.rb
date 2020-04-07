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

  get 'packages/new'
  get 'packages/new_custom'
  get 'packages/customise_blank/:id', to: "packages#customise_blank"
  get '/packages/customise/:id', to: "packages#customise", as: 'customise'
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
