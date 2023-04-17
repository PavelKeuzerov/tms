# frozen_string_literal: true

module Lesson
  class Teststr
    class << self
      def call(arg1, arg2)
        arg1 = arg1.is_a?(String) ? arg1 : arg1.to_s
        arg2 = arg2.is_a?(String) ? arg2 : arg2.to_s
        [arg1, arg2].join(' ').capitalize
      end
    end
  end
end
