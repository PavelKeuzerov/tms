# Создать свой аналог класса Array, String, Hash (на выбор).

class Analog
  attr_accessor :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def size
    numbers.size
  end

  # def years_left 
  #   years_left = 2
  #   numbers * 2
  # end
end
ar = Analog.new('23543')
# ar.years_left
ar.size
