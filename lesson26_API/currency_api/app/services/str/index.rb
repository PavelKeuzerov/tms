# frozen_string_literal: true

class Index
  class << self
    def call
      str = ('str1' + 'str2')
      str.capitalize
    end
  end
end
