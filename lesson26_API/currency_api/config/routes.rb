# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  scope :forex, controller: :forex do
    get '/index',    action: :index
    get '/convert',  action: :convert
    # get '/get_save_db', action: :get_save_db
  end
end
