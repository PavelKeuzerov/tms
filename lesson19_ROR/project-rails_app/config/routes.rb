# frozen_string_literal: true

Rails.application.routes.draw do
  resources :coments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope :book, controller: :book do
    get '/show', action: :show
    get '/new', action: :new
  end

  get '/authors', to: 'authors#index'
  get '/authors/new', to: 'authors#new'
  post '/authors', to: 'authors#create'
end
