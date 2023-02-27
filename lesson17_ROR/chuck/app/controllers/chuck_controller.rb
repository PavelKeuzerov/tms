class ChuckController < ActionController::Base
  HOST = 'https://api.chucknorris.io'.freeze
  RANDOM_JOKE = '/jokes/random'.freeze
  CATEGORYS = '/jokes/categories'.freeze
  SEARCH_JOKES = '/jokes/search?query='.freeze
  JOKE_BY_CATEGORY = '/jokes/random?category='.freeze

  def random_joke
    random_joke = Curl.get(HOST + RANDOM_JOKE)
    render json: JSON(random_joke.body)['value']
  end

  def category
    categories = Curl.get(HOST + CATEGORYS)
    render json: JSON(categories.body)
  end

  def search
    query = params[:query]
    search_jokes = Curl.get(HOST + SEARCH_JOKES + query)
    render json: JSON(search_jokes.body)
  end

  def joke_category
    category = params[:category]
    joke_category = (HOST + JOKE_BY_CATEGORY + category)
    render json: JSON(joke_category.body)['value']
  end
end
