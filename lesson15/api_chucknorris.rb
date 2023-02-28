# frozen_string_literal: true

require 'curb'
require 'json'

class Chucky
  HOST = 'https://api.chucknorris.io'
  CATEGORY_PATH = '/jokes/categories'
  JOKE_BY_CATEGORY = '/jokes/random?category='

  def speak_chuk
    category = Curl.get(HOST + CATEGORY_PATH)
    chuck = JSON(category.body)
    puts 'Choose a category'
    chuck.map.with_index do |element, index|
      puts "#{index + 1}: #{element}"
    end
    category_selection = gets.to_i + 1
    raise 'ERROR - wrong category selection' unless (0...chuck.size).include?(category_selection)

    random_category = chuck[category_selection]
    chuck_category =  Curl.get(HOST + JOKE_BY_CATEGORY + random_category)

    puts JSON.parse(chuck_category.body)['value']
  end
end

chuck = Chucky.new
chuck.speak_chuk
