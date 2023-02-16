# frozen_string_literal: true

require 'curb'
require 'json'

# random_category = Curl.get('https://api.chucknorris.io/jokes/random')
# chuck = JSON random_category.body
# # puts chuck
# puts chuck['value']

# res = Curl.get('https://api.chucknorris.io/jokes/random?category={category}')
# chuck = JSON parse(res.body)
# puts chuck

# re = Curl.get('https://api.chucknorris.io/jokes/categories')
# chuck = JSON re.body
# puts chuck

# puts res.code
# puts res.head
#

class Chucky
  def speak_chuk
    random_category = Curl.get('https://api.chucknorris.io/jokes/random')
    chuck = JSON random_category.body
    puts chuck['value']
  end
end
chuck = Chucky.new
chuck.speak_chuk
