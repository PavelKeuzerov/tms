# Идеальный вес. Программа запрашивает у пользователя имя и рост и выводит идеальный вес по формуле (<рост> - 110) * 1.15, после чего выводит результат пользователю на экран с обращением по имени. Если идеальный вес получается отрицательным, то выводится строка "Ваш вес уже оптимальный"

# 1 запрос ввода данных 
# 2 вывод результата 

puts 'введите ваше имя'
name = gets.chomp
puts 'введите ваш рост'
growth = gets.to_f
weight = (growth - 110) * 1.15
puts "#{name}, ваш идеальный вес состовляет #{weight}"
if weight < 0
  puts 'ваш вес оптимальный'
end
