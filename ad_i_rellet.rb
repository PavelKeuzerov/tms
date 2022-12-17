# Доработать задание с занятия с рулеткой:
#  - игрок пытается угадать цвет ячейки рулетки, которая выпала
#  - * у игрока на старте есть баланс в 100 монеток и он может делать ставки. победа на красном и черном x2,
#      а на зеленом x36. После каждого раунда выводить игроку его текущий баланс
#  - сделать шансы близкими к реальным (красное и черное 45%, зеленое 10%)

# 1-ввод данный для ставки 
# 2-добавдение баланса для ставок
# 3-ввод шанса на победу
# 4-объявление результата

MONEY = 100
RED = (1..18).to_a
BLACK = (19..36).to_a
GREEN = 37
MIN = 1
MAX = 37

  

  collors = rand(MIN..MAX)
  user_attempt = 1
  loop do
    puts "У вас есть #{MONEY - user_attempt + 1} для ставки"
    puts "Введите цифру от  #{MIN} до #{MAX} и вам выпадет цвет соответствующий ячеки с цифрой"
    user_gues = gets.to_i
    if
      user_gues == collors
      RED.include?(collors)
      puts "Вы победили выпало #{collors = 'RED'}" 
      user_attempt -= 2   
  break
    elsif 
      BLACK.include?(collors)
      puts "Вы проиграли выпало #{collors = 'BLACK'}"
      user_attempt += 1
    elsif
      GREEN
      puts "Вы проиграли ввыпало #{collors='GREEN'}"
      user_attempt += 1 
    # else
    #   puts "Вы все проиграли #{MONEY - user_attempt +1 < 0}"
    end 
  end  



