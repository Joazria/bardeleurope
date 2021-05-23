Rails.application.routes.draw do


  devise_for :users
  root to: 'pages#home'
  get '/softs', to: 'pages#softs'
  get '/beers', to: 'pages#beers'
  get '/chauds', to: 'pages#chauds'
  get '/cafesfroids', to: 'pages#cafesfroids'
  get '/jusfrais', to: 'pages#jusfrais'
  get '/alcool', to: 'pages#alcool'
  get '/cocktails', to: 'pages#cocktails'
  get '/vins', to: 'pages#vins'
  get '/aperitifs', to: 'pages#aperitifs'
  get '/liqueurs', to: 'pages#vins'
  get '/petitdejeuner', to: 'pages#petitdejeuner'

  get '/dashboard', to: 'pages#dashboard'

   resources :foods
   resources :drinks
   resources :icecreams

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
