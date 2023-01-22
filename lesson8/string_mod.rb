# Создать свой аналог класса Array, String, Hash (на выбор). 
# При этом все методы класса должны хранится в разделенных по смыслу модулях (модули создание, добавления, удаления, вывода, каких-либо изменений)

module Add
  attr_accessor :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def size
    count = 0
    numbers.each_char { |char| count += 1 }
    count
  end
end

module Del
  def delete(del)
    new_str = ''
    numbers.each_char { |char| new_str += char unless char == del.to_s }
    new_str
  end
end

class Str
  include Add
  include Del
end

str = Str.new('23543')

p str.size
p str.delete(3)
