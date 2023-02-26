Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/my_name', to: 'name#my_name'
  get '/joke', to: 'chuck#speak_chuk'
end
