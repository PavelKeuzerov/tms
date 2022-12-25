# Доработать задание с занятия с рулеткой:
#  - игрок пытается угадать цвет ячейки рулетки, которая выпала
#  - * у игрока на старте есть баланс в 100 монеток и он может делать ставки. победа на красном и черном x2,
#      а на зеленом x36. После каждого раунда выводить игроку его текущий баланс
#  - сделать шансы близкими к реальным (красное и черное 45%, зеленое 10%)

# 1-ввод данный для ставки 
# 2-добавдение баланса для ставок
# 3-ввод шанса на победу
# 4-объявление результата

RED = 1..18
BLACK = 19..36
GREEN = 37
MIN = 1
MAX = 37

money = 100

loop do
  puts "У вас есть #{money} монет для ставки"
  puts 'Сделайте ставку'
  user_bet = gets.to_i
  money -= user_bet
  puts 'Введите  (red, black ,green)'
  user_color = gets.strip

  random_colors = rand(MIN..MAX)
  if RED.include?(random_colors)
    color = 'red'
  elsif BLACK.include?(random_colors)
    color = 'black'
  else
    color = 'green'
  end

  if color == 'green'
    value_bet = user_bet * 36
  else
    value_bet = user_bet * 2
  end

  while money < user_bet
    puts "Игра закончилась, ваш баланс #{money},монет"
    user_bet = gets.to_i
  end

  if user_color == color 
    puts "Вы победили выпало #{color}"
    money += value_bet
  else
    puts "Вы проиграли ввыпало #{color}"
  end
end