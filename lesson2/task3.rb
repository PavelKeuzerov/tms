# S Площадь треугольника. Площадь треугольника можно вычислить, зная его основание (a) и высоту (h) по формуле: 1/2*a*h. Программа должна запрашивать основание и высоту треугольника и возвращать его площадь.

#1-принять ввод с клавиатуры
#2- вывести ответ

puts 'введите высоту треугольника'
h = gets.to_f
puts 'введите основание треугольника'
a = gets.to_f
s = h * a * 0.5
puts "площать треугольника #{s}"



