Rails.application.routes.draw do
  get 'session/new'
  root 'static_pages#home'
  get '/signup',    to: 'users#new'
  post '/signup',   to: 'users#create'
  get '/login',     to: 'sessions#new'
  post '/login',     to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  
  resources :users
end
