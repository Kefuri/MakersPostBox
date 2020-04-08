Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/signup'
  post 'users/signup', to: 'users#create'
  get 'users/signin'
  post 'users/signin', to: 'sessions#create'
  get 'users/destroy', to: 'sessions#destroy'

  get 'packages/new_custom'
  get 'packages/customise_blank/:id', to: "packages#customise_blank"

  get 'premade/dogs'
  get 'packages/new_dogs'
  get '/packages/customise_dogs/:id', to: "packages#customise_dogs", as: 'customise'

  get 'premade/cats'
  # get 'packages/new_cats'
  # get '/packages/customise_cats/:id', to: "packages#customise_cats", as: 'customise'

  get 'premade/scenery'
  # get 'packages/new_scenery'
  # get '/packages/customise_scenerys/:id', to: "packages#customise_scenery", as: 'customise'

  get 'premade/messages'
  # get 'packages/new_messages'
  # get '/packages/customise_messages/:id', to: "packages#customise_messages", as: 'customise'

  get 'premade/love'
  # get 'packages/new_love'
  # get '/packages/customise_love/:id', to: "packages#customise_love", as: 'customise'
  
  get 'packages/show/:id', to: "packages#show"

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
