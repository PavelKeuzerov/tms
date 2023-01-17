# Создать свой аналог класса Array, String, Hash (на выбор).

class String
  attr_accessor :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def size
    count = 0
    numbers.each_char { |char| count += 1 }
    count
  end

  def delete(del)
    new_str = ''
    numbers.each_char { |char| new_str += char unless char == del.to_s }
    new_str
  end
end

str = String.new('23543')

p str.size
p str.delete(3)
