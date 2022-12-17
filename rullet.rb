# РУЛЕТКА 


# 1-ввод данный для игры
# 2-объявление результата


while true
  collors = %w[red black zero]
  puts 'Выберите цвет для ставки: red, black, zero'
  user_players = gets.strip
  rand = collors.sample
   if rand == user_players
    puts 'Вы выйграли'
   else 
     puts "Вы проиграли, выйгрыш #{rand}"
   end 
end  


