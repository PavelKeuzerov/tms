# frozen_string_literal: true

require 'curb'
require 'json'

class Chucky
  NUMBER_CATEGOIES = 15

  def speak_chuk
    category = Curl.get('https://api.chucknorris.io/jokes/categories')
    chuck = JSON category.body
    puts 'Choose a category for the joke from 1 to 16'
    chuck.map.with_index do |element, index|
      puts "#{index + 1}: #{element}"
    end
    category_selection = gets.strip.to_i - 1
    random_category = chuck[category_selection]
    chuck_category = Curl.get("https://api.chucknorris.io/jokes/random?category=#{random_category}")
    raise 'ERROR - wrong category selection' if category_selection > NUMBER_CATEGOIES

    puts JSON.parse(chuck_category.body)['value']
  end
end

chuck = Chucky.new
chuck.speak_chuk
