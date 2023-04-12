# frozen_string_literal: true

class TestStr
  class << self
    def call
      str = ('str1' + 'str2')
      str.capitalize
    end
  end
end
