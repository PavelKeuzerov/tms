# ИДЕАЛЬНЫЙ ВЕС

# запрос ввода данных 
# вывод результата 

puts 'введите ваше имя'
name = gets.chomp
puts 'введите ваш рост'
growth = gets.to_f
weight = (growth - 110)*1.15
puts "#{name}, ваш идеальный вес состовляет #{weight}"
if weight < 0
  puts 'ваш вес оптимальный'
end
