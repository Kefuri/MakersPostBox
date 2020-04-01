Rails.application.routes.draw do
  get 'premade/dogs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'user/signup'

  root 'user#signup'


  get 'home/index'
 
  resources :articles
end
