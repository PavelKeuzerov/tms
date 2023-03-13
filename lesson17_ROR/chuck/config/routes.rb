Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/my_name', to: 'name#my_name'
  get '/random_joke', to: 'chuck#random_joke'
  get '/category', to: 'chuck#category'
  get '/search_jokes', to: 'chuck#search'
  get '/joke_category', to: 'chuck#joke_category'
end
