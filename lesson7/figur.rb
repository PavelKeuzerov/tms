# Реализуйте иерархию классов Figure, Circle, Square, Rectangle, Triangle с методами area() и perimeter(),
# которые возвращают площадь и периметр фигуры. Используйте полиморфизм. 

class Figure
  attr_accessor :side_a

  def initialize(side_a)
    @side_a = side_a
  end
end

class Circle < Figure
  # PI = 3,14

  def area
    puts "Area circle #{3.14 * side_a**2}"
  end

  def perimeter
    puts "Perimeter of a circle #{2 * 3.14 * side_a}"
  end
end
class Square < Figure
  def area
    puts "Area square #{side_a**2}"
  end

  def perimeter
    puts "Perimeter of a square #{side_a * 4}"
  end
end


class Rectangle < Figure
  attr_accessor :side_b

  def initialize(side_a, side_b)
    @side_b = side_b
    super(side_a)
  end

  def area
    puts "Area rectangle #{side_a * side_b}"
  end

  def perimeter
    puts "Perimeter of a rectangle #{(side_a * side_b) * 2}"
  end
end
class Triangle < Figure
  attr_accessor :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_b = side_b
    @side_c = side_c
    super(side_a)
  end

  def area
    p = (side_a + side_b + side_c) / 2
    puts "Area triangle  #{Math.sqrt(p * (p - side_a) * (p - side_b) * (p - side_c))}"
  end

  def perineter
    puts "Perimeter of a triangle #{side_a + side_b + side_c}"
  end
end

circle = Circle.new(5)
square = Square.new(2)
rectangle = Rectangle.new(2, 3)
triangle = Triangle.new(2, 3, 4)

puts circle.area
puts circle.perimeter

puts square.area
puts square.perimeter

puts rectangle.area
puts rectangle.perimeter

puts triangle.area
puts triangle.perineter
