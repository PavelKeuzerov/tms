# frozen_string_literal: true

require 'curb'
require 'json'

class Chucky
  def speak_chuk
    random_category = Curl.get('https://api.chucknorris.io/jokes/random')
    chuck = JSON random_category.body
    puts chuck['value']
  end
end
chuck = Chucky.new
chuck.speak_chuk
