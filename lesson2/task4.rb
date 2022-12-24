# Прямоугольный треугольник. Программа запрашивает у пользователя 3 стороны треугольника и определяет, является ли треугольник прямоугольным (используя теорему Пифагора www-formula.ru), равнобедренным (т.е. у него равны любые 2 стороны)  или равносторонним (все 3 стороны равны) и выводит результат на экран. Подсказка: чтобы воспользоваться теоремой Пифагора, нужно сначала найти самую длинную сторону (гипотенуза) и сравнить ее значение в квадрате с суммой квадратов двух остальных сторон. Если все 3 стороны равны, то треугольник равнобедренный и равносторонний, но не прямоугольный.

#1 ввод данных
#2 сравнить стороны, решить какой треугольник
#3 применить теорему пифагора

sides_triangle = []
puts 'Введите сторону треугольника'
sides_triangle << gets.to_f
puts 'Введите сторону треугольника'
sides_triangle << gets.to_f
puts 'Введите сторону треугольника'
sides_triangle << gets.to_f
leg_a, leg_b, hypotenuse = sides_triangle.sort
if  hypotenuse**2 == leg_a**2 + leg_b**2
  puts 'Треугольник прямоугольный'
elsif leg_a == leg_b && leg_b == hypotenuse
  puts 'Треугольник равнобедренный' 
elsif leg_a == leg_b || leg_b == hypotenuse || hypotenuse == leg_a
  puts 'Треугольник равносторонний'
else
  puts 'Треугольник разносторонний'
end

