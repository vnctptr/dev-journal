Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  resources :subjects
  resources :notes
  get 'home/index'
  get 'about', to: 'about#index'
  root 'home#index'
  get '/signin', to: 'sessions#new'
  resource :sessions, only: [:create]
  get '/search', to: 'home#search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
