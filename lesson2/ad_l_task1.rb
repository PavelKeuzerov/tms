# Квадратное уравнение. Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если они есть) и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
#   Если D > 0, то выводим дискриминант и 2 корня
#   Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
#   Если D < 0, то выводим дискриминант и сообщение "Корней нет"
# Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). Для вычисления квадратного корня, нужно использовать  

# 1 ввод данных пользователем
# 2 вычисление дискриминанта и корней уравнения


puts 'Ведите коэфициент a'
a = gets.to_f
puts 'Ведите коэфициент b'
b = gets.to_f
puts 'Ведите коэфициент c'
c = gets.to_f
discriminant = b**2-4*a*c           
if 
  discriminant < 0 
  puts "#{discriminant} Корней нет"
elsif 
  discriminant == 0 
  puts "#{discriminant} он имеет один корень #{-b/(a*2)}"   
  else
    discriminant > 0
    puts "#{discriminant} он имеет два корня #{(-b-Math.sqrt(discriminant))/(a*2)} и #{(-b+Math.sqrt(discriminant))/(a*2)}"   
end      


