Rails.application.routes.draw do
  resources :subjects
  resources :notes
  get 'home/index'
  get 'about/index'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
