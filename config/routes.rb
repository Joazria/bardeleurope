Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/drinks', to: 'pages#drinks'
  get '/beers', to: 'pages#beers'

   resources :drinks

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
