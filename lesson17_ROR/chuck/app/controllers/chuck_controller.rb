class ChuckController < ActionController::Base
  HOST = 'https://api.chucknorris.io'.freeze
  RANDOM_JOKE = '/jokes/random'.freeze

  def speak_chuk
    category = Curl.get(HOST + RANDOM_JOKE)
    render json: JSON(category.body)['value']
  end
end
