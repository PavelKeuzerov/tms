#  Николаю требуется проверить, возможно ли из представленных отрезков условной длины сформировать треугольник. 
# Для этого он решил создать класс TriangleChecker, принимающий только положительные числа. С помощью метода is triangle() возвращаются следующие значения (в зависимости от ситуации):
# – Ура, можно построить треугольник!;
# – С отрицательными числами ничего не выйдет!;
# – Нужно вводить только числа!;
# – Жаль, но из этого треугольник не сделать

# 1-ввод данных для создания треугольника
# 2-создание класса и метода
# 3-проверка данных

class TriandleCheker
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a  = side_a
    @side_b  = side_b
    @side_c  = side_c
  end

  def is_triangle?
    if side_a.class != Integer || side_b.class != Integer || side_c.class != Integer
      puts 'Нужно вводить только числа'
    elsif side_a.negative? || side_b.negative? || side_c.negative?
      puts 'С отрицательными числами не выйдет'
    elsif side_a + side_b > side_c && side_b + side_c > side_a && side_a + side_c > side_b
      puts 'Ура можно построить треугольник'
    else
      puts 'Жаль но из этого треугольник не сделать'
    end
  end
end

triangle = TriandleCheker.new(1, 'a', 3)
triangle.is_triangle?
