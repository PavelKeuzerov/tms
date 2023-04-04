Rails.application.routes.draw do
  resources :coments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/index', to: 'forex#index'
  get '/index/convert', to: 'forex#convert'
end
