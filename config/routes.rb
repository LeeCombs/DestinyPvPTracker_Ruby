Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/compare', to: 'compare#index'

  get '/character', to: 'characters#show'

  resources :destiny_players
  resources :characters
end
