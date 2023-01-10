# Заполнить массив числами от 10 до 100 с шагом 5

array = (10..100).step(5).to_a

puts array


array_1 = (10..100).select { |el| el % 5 == 0 }

puts array_1