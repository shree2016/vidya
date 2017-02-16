Rails.application.routes.draw do
  get 'sessions/new'

  get 'welcome/index'
  get  'forms/new'
  get 'forms/index'
  get 'forms/log'
  get 'forms/create'
  get 'users/new'
  get    '/signup',  to: 'forms#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  post '/users' =>'users#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/form/logged_in', to: 'sessions#logged_in'
  get "/sessions/logout", to: 'sessions#logout'
get '/layouts/header',to: 'forms#create'
  resources :forms

resources :session
root 'welcome#index'
root 'forms#log'
  root 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
