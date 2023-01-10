# Заполнить массив числами фибоначчи до 100

fibonacci = [0, 1]
step = 1

while step < 100
  fibonacci << step
  step = fibonacci[-2] + fibonacci[-1]
end

puts fibonacci
